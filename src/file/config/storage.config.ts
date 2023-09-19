import * as multer from 'multer';
import * as lodash from 'lodash';
import { join } from 'path';

export const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    // cb(null, join(__dirname, '../../..', 'public/uploads'));
    cb(null, './public/uploads');
  },
  filename: function (req, file, cb) {
    const ext = lodash.last(file.originalname.split('.'));
    const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9);
    cb(null, file.fieldname + '-' + uniqueSuffix + '.' + ext);
  }
});
