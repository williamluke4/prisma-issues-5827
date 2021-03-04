import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

// A `main` function so that you can use async/await
async function main() {
  const posts = await prisma.post.create({data: {title: 'Hello'}})
  console.log({posts});
  const deleted = await prisma.post.deleteMany()
  console.log({deleted});
}

main()
  .catch(e => {
    throw e
  })
  .finally(async () => {
    await prisma.$disconnect()
  })
