import { Controller, Get, Req, Res } from '@nestjs/common';
import { Response } from 'express';

@Controller('test')
export class TestApiController {
  @Get()
  async getFolderStructure(@Req() req, @Res() res: Response) {
    return res.status(200).json({ message: 'test' });
  }
}
