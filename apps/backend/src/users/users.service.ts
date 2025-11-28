import { Injectable } from '@nestjs/common';
import { PrismaService } from '@/prisma/prisma.service';

@Injectable()
export class UsersService {
  constructor(private prisma: PrismaService) { }

  async create({ name, email, image }) {
    return this.prisma.client.user.create({
      data: {
        name,
        email,
        image,
        updatedAt: new Date(),
      },
    });
  }

  async findByEmail(email: string) {
    return this.prisma.client.user.findUnique({
      where: { email: email }, // or in sintax sugar where: { email }
    });
  }
}
