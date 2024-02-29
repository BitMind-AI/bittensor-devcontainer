import { Module } from '@nestjs/common';
import { ExecService } from './services/exec/exec.service';

@Module({
  imports: [],
  controllers: [],
  providers: [ExecService],
})
export class AppModule {}
