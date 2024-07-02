import { authMiddleware } from "@clerk/nextjs/server";

const middleware = authMiddleware();

export default middleware;

export const config = {
  matcher: ['/', '/(api|trpc)(.*)'],
};