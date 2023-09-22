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
          username: 'kevinduong',
          fullName: 'Kevin Duong',
          email: 'duonghuynhnhan@outlook.com',
          dob: '2001-04-26T00:00:00.000Z',
          gender: 'Male',
          phone: '0354984001',
          password: '$2a$12$1sdtGcx6Ss5OGprdCyuQpuJ5SUN34Mr42fB8WSaHSAS1n4HCoT1qy',
          role: 'Admin',
          countryId: 'VI',
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
