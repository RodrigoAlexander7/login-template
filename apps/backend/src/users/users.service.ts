import { Injectable } from "@nestjs/common";
import { PrismaService } from "@/prisma/prisma.service";
import type { User } from "@generated/prisma/client";

export interface CreateUserDto {
  name?: string | null;
  email: string;
  image?: string | null;
}

@Injectable()
export class UsersService {
  constructor(private prisma: PrismaService) {}

  async create(data: CreateUserDto): Promise<User> {
    return this.prisma.client.user.create({
      data: {
        name: data.name ?? null,
        email: data.email,
        image: data.image ?? null,
      },
    });
  }

  async findByEmail(email: string): Promise<User | null> {
    return this.prisma.client.user.findUnique({
      where: { email },
    });
  }
}
