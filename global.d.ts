import { PrismaClient } from "@prisma/client/extension";

declare global {
    namespace globalThis {
        var prismadb: PrismaClient
    }
}