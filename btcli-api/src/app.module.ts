import { Module } from '@nestjs/common';
import { TestApiController } from './controllers/test-api/test-api.controller';
import { ExecService } from './services/exec/exec.service';

@Module({
  imports: [],
  controllers: [TestApiController],
  providers: [ExecService],
})
export class AppModule {}
