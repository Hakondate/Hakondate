export interface School {
  authorizationRequired: boolean;
  authorizationKey: string;
  classification: string;
  id: number;
  lunchBlock: number;
  name: string;
  parentId: number;
  updateAt: Date;
}
