import { PrismaClient } from '@prisma/client';
import countries from './data/country.json';

const prisma = new PrismaClient();

async function main() {
  const createdAt = new Date().toISOString();

  const country = await prisma.country.count();
  if (country === 0) {
    await prisma.country.createMany({
      data: [
        ...countries,
      ],
    });
  }

  const accounts = await prisma.account.count();
  if (accounts === 0) {
    await prisma.account.createMany({
      data: [
        {
          username: 'admin',
          fullName: 'Admin',
          email: 'duonghuynhnhan@outlook.com',
          dob: '2001-04-26T00:00:00.000Z',
          gender: 'Male',
          phone: '0354984001',
          password: '$2a$12$H2q/2zRPJeIs71GvHnNd1OEnw2WXjNzT6WrVJ7Fr0/62u.uIT/Szu',
          role: 'Admin',
          countryId: 'VN',
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
