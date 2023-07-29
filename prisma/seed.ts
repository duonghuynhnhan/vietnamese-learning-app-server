import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient()

async function main() {
  const createdAt = new Date().toISOString();

  const accounts = await prisma.account.count();
  if (accounts === 0) {
    await prisma.account.createMany({
      data: [
        {
          username: 'kevinduong',
          fullName: 'Kevin Duong',
          email: 'duonghuynhnhan@outlook.com',
          dob: '2001-04-26T00:00:00.000Z',
          gender: 'Male',
          nationality: 'Vietnamese',
          password: '$2a$12$We3F8L6ZWkwBRVCLm2VmHeIz.mpKJ4T/uF.5jR2iGdswB2WpIjVsK',
          role: 'Admin',
          createdAt,
        },
      ]
    });
  }
}

main()
  .then(async () => {
    await prisma.$disconnect()
  })
  .catch(async (e) => {
    console.error(e)
    await prisma.$disconnect()
    process.exit(1)
  })
