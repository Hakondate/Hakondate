/* eslint-disable require-jsdoc */
import {getFirestore} from "firebase-admin/firestore";
import {School} from "../model/school";

export interface ISchoolsRepository {
  fetch(): Promise<void>;
  getSchools(): Promise<School[]>;
  getSchoolById(id: number): Promise<School | undefined>;
}

export class SchoolsRepository implements ISchoolsRepository {
  private db: FirebaseFirestore.Firestore;
  private schools: School[] = [];

  constructor() {
    this.db = getFirestore();
  }

  async fetch(): Promise<void> {
    this.schools = [];
    await this.db
      .collection("schools")
      .get()
      .then((snapshot) => {
        snapshot.forEach((doc) => {
          this.schools.push(JSON.parse(JSON.stringify(doc.data())));
        });
      });
  }

  async getSchools(): Promise<School[]> {
    await this.ensureInitialized();
    return this.schools;
  }

  async getSchoolById(id: number): Promise<School | undefined> {
    let school: School | undefined = undefined;
    await this.ensureInitialized();

    this.schools.forEach((s) => {
      if (s.id === id) {
        school = s;
      }
    });

    return school;
  }

  private async ensureInitialized(): Promise<void> {
    if (this.schools.length === 0) {
      await this.fetch();
    }
  }
}
