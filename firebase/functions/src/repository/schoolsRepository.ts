/* eslint-disable require-jsdoc */
import {School} from "../model/school";

export interface ISchoolsRepository {
  fetch(): Promise<void>;
  getSchools(): Promise<School[]>;
  getSchoolById(id: number): Promise<School | undefined>;
}

export class SchoolsRepository implements ISchoolsRepository {
  private db: FirebaseFirestore.Firestore;
  private schools: School[] = [];

  constructor(db: FirebaseFirestore.Firestore) {
    this.db = db;
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
    await this.ensureInitialized();
    return this.schools.find((s) => s.id === id);
  }

  private async ensureInitialized(): Promise<void> {
    if (this.schools.length === 0) {
      await this.fetch();
    }
  }
}
