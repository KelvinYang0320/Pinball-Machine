`define c6 32'd1047

`define c5 32'd523   //C5
`define c5_ 32'd554   //C5#
`define d5  32'd587   // D5
`define d5_ 32'd622
`define e5  32'd659   // E5
`define f5 32'd698   //F5
`define f5_ 32'd740   //F5#
`define g5  32'd784   // G5
`define g5_ 32'd831
`define a5 32'd880
`define a5_ 32'd932
`define b5 32'd988

`define c4   32'd262   // C4
`define c4_   32'd277   // C4
`define d4   32'd294
`define d4_ 32'd311
`define e4   32'd330
`define f4   32'd349
`define f4_   32'd370
`define g4   32'd392   // G4
`define g4_   32'd415   // G4#
`define a4   32'd440
`define a4_ 32'd466
`define b4   32'd494   // B3

`define c3 32'd131
`define d3 32'd147
`define e3 32'd165
`define f3 32'd175
`define f3_ 32'd185
`define g3 32'd196
`define g3_ 32'd208
`define a3 32'd220
`define a3_ 32'd233
`define b3 32'd247
`define sil   32'd50000000 // slience

`define A 7'b0001000
`define B 7'b0000000
`define C 7'b1000110
`define D 7'b1000000
`define E 7'b0000110
`define F 7'b0001110
`define G 7'b0000010
`define p 7'b0111111

`define silence   32'd50000000
`define none 7'b0111111

`define play_audio 3'b001
`define init_audio 3'b000
`define win_audio 3'b010
`define loss_audio 3'b011
`define play_fast_audio 3'b100
`define hit_audio 3'b101
`define miss_audio 3'b110

module music_example (
	input [11:0] ibeatNum,
	input [2:0]en,
	input _play,
	input pause,
	output reg [31:0] toneL,
    output reg [31:0] toneR
);
   
    always @* begin
        if(en==`miss_audio)begin
            case(ibeatNum)
                12'd0:toneR=`g5;12'd1:toneR=`g5;
12'd2:toneR=`c6;12'd3:toneR=`c6;
12'd4:toneR=`c6;12'd5:toneR=`c6;
12'd6:toneR=`c6;12'd7:toneR=`c6;
12'd8:toneR=`c6;12'd9:toneR=`c6;
12'd10:toneR=`c6;12'd11:toneR=`c6;
12'd12:toneR=`c6;12'd13:toneR=`c6;
12'd14:toneR=`c6;
12'd15:toneR=`sil;
                default:
                toneR=`sil;
            endcase
        end
        else if(en==`hit_audio)begin
            case(ibeatNum)
                12'd0:toneR=`g3;12'd1:toneR=`g3;
12'd2:toneR=`g3;12'd3:toneR=`g3;
12'd4:toneR=`g3;12'd5:toneR=`g3;
12'd6:toneR=`g3;12'd7:toneR=`g3;

12'd8:toneR=`g4;12'd9:toneR=`g4;
12'd10:toneR=`g4;12'd11:toneR=`g4;
12'd12:toneR=`g4;12'd13:toneR=`g4;
12'd14:toneR=`g4;12'd15:toneR=`g4;

12'd16:toneR=`g5;12'd17:toneR=`g5;
12'd18:toneR=`g5;12'd19:toneR=`g5;
12'd20:toneR=`g5;12'd21:toneR=`g5;
12'd22:toneR=`g5;12'd23:toneR=`g5;
12'd24:toneR=`g5;12'd25:toneR=`g5;
12'd26:toneR=`g5;12'd27:toneR=`g5;
12'd28:toneR=`g5;12'd29:toneR=`g5;
12'd30:toneR=`g5;12'd31:toneR=`g5;
                default:
                    toneR=`sil;
            endcase
        end
        else if(en==`play_fast_audio)begin
             case(ibeatNum)
                12'd0:toneR=`c5;12'd1:toneR=`c5;
12'd2:toneR=`c5;12'd3:toneR=`c5;
12'd4:toneR=`c5;12'd5:toneR=`c5;
12'd6:toneR=`c5;
12'd7:toneR=`sil;
12'd8:toneR=`c5;12'd9:toneR=`c5;
12'd10:toneR=`c5;12'd11:toneR=`c5;
12'd12:toneR=`c5;12'd13:toneR=`c5;
12'd14:toneR=`c5;
12'd15:toneR=`sil;
12'd16:toneR=`c5;12'd17:toneR=`c5;
12'd18:toneR=`c5;12'd19:toneR=`c5;
12'd20:toneR=`c5;12'd21:toneR=`c5;
12'd22:toneR=`c5;
12'd23:toneR=`sil;
12'd24:toneR=`c5;12'd25:toneR=`c5;
12'd26:toneR=`c5;
12'd27:toneR=`sil;
12'd28:toneR=`c5;12'd29:toneR=`c5;
12'd30:toneR=`c5;12'd31:toneR=`c5;
12'd32:toneR=`c5;12'd33:toneR=`c5;
12'd34:toneR=`c5;
12'd35:toneR=`sil;
12'd36:toneR=`c5;12'd37:toneR=`c5;
12'd38:toneR=`c5;
12'd39:toneR=`sil;
12'd40:toneR=`c5;12'd41:toneR=`c5;
12'd42:toneR=`c5;12'd43:toneR=`c5;
12'd44:toneR=`c5;12'd45:toneR=`c5;
12'd46:toneR=`c5;
12'd47:toneR=`sil;
12'd48:toneR=`c5;12'd49:toneR=`c5;
12'd50:toneR=`c5;12'd51:toneR=`c5;
12'd52:toneR=`c5;12'd53:toneR=`c5;
12'd54:toneR=`c5;
12'd55:toneR=`sil;
12'd56:toneR=`c5;12'd57:toneR=`c5;
12'd58:toneR=`c5;12'd59:toneR=`c5;
12'd60:toneR=`c5;12'd61:toneR=`c5;
12'd62:toneR=`c5;12'd63:toneR=`c5;

12'd64:toneR=`b4;12'd65:toneR=`b4;
12'd66:toneR=`b4;12'd67:toneR=`b4;
12'd68:toneR=`b4;12'd69:toneR=`b4;
12'd70:toneR=`b4;
12'd71:toneR=`sil;
12'd72:toneR=`b4;12'd73:toneR=`b4;
12'd74:toneR=`b4;12'd75:toneR=`b4;
12'd76:toneR=`b4;12'd77:toneR=`b4;
12'd78:toneR=`b4;
12'd79:toneR=`sil;
12'd80:toneR=`b4;12'd81:toneR=`b4;
12'd82:toneR=`b4;12'd83:toneR=`b4;
12'd84:toneR=`b4;12'd85:toneR=`b4;
12'd86:toneR=`b4;
12'd87:toneR=`sil;
12'd88:toneR=`b4;12'd89:toneR=`b4;
12'd90:toneR=`b4;
12'd91:toneR=`sil;
12'd92:toneR=`b4;12'd93:toneR=`b4;
12'd94:toneR=`b4;12'd95:toneR=`b4;
12'd96:toneR=`b4;12'd97:toneR=`b4;
12'd98:toneR=`b4;
12'd99:toneR=`sil;
12'd100:toneR=`b4;12'd101:toneR=`b4;
12'd102:toneR=`b4;
12'd103:toneR=`sil;
12'd104:toneR=`b4;12'd105:toneR=`b4;
12'd106:toneR=`b4;12'd107:toneR=`b4;
12'd108:toneR=`b4;12'd109:toneR=`b4;
12'd110:toneR=`b4;
12'd111:toneR=`sil;
12'd112:toneR=`b4;12'd113:toneR=`b4;
12'd114:toneR=`b4;12'd115:toneR=`b4;
12'd116:toneR=`b4;12'd117:toneR=`b4;
12'd118:toneR=`b4;
12'd119:toneR=`sil;
12'd120:toneR=`b4;12'd121:toneR=`b4;
12'd122:toneR=`b4;12'd123:toneR=`b4;
12'd124:toneR=`b4;12'd125:toneR=`b4;
12'd126:toneR=`b4;12'd127:toneR=`b4;

12'd128:toneR=`c5;12'd129:toneR=`c5;
12'd130:toneR=`c5;12'd131:toneR=`c5;
12'd132:toneR=`c5;12'd133:toneR=`c5;
12'd134:toneR=`c5;
12'd135:toneR=`sil;
12'd136:toneR=`c5;12'd137:toneR=`c5;
12'd138:toneR=`c5;12'd139:toneR=`c5;
12'd140:toneR=`c5;12'd141:toneR=`c5;
12'd142:toneR=`c5;
12'd143:toneR=`sil;
12'd144:toneR=`c5;12'd145:toneR=`c5;
12'd146:toneR=`c5;12'd147:toneR=`c5;
12'd148:toneR=`c5;12'd149:toneR=`c5;
12'd150:toneR=`c5;
12'd151:toneR=`sil;
12'd152:toneR=`c5;12'd153:toneR=`c5;
12'd154:toneR=`c5;
12'd155:toneR=`sil;
12'd156:toneR=`c5;12'd157:toneR=`c5;
12'd158:toneR=`c5;12'd159:toneR=`c5;
12'd160:toneR=`c5;12'd161:toneR=`c5;
12'd162:toneR=`c5;
12'd163:toneR=`sil;
12'd164:toneR=`c5;12'd165:toneR=`c5;
12'd166:toneR=`c5;
12'd167:toneR=`sil;
12'd168:toneR=`c5;12'd169:toneR=`c5;
12'd170:toneR=`c5;12'd171:toneR=`c5;
12'd172:toneR=`c5;12'd173:toneR=`c5;
12'd174:toneR=`c5;
12'd175:toneR=`sil;
12'd176:toneR=`c5;12'd177:toneR=`c5;
12'd178:toneR=`c5;12'd179:toneR=`c5;
12'd180:toneR=`c5;12'd181:toneR=`c5;
12'd182:toneR=`c5;
12'd183:toneR=`sil;
12'd184:toneR=`c5;12'd185:toneR=`c5;
12'd186:toneR=`c5;12'd187:toneR=`c5;
12'd188:toneR=`c5;12'd189:toneR=`c5;
12'd190:toneR=`c5;12'd191:toneR=`c5;

12'd192:toneR=`b4;12'd193:toneR=`b4;
12'd194:toneR=`b4;12'd195:toneR=`b4;
12'd196:toneR=`b4;12'd197:toneR=`b4;
12'd198:toneR=`b4;
12'd199:toneR=`sil;
12'd200:toneR=`b4;12'd201:toneR=`b4;
12'd202:toneR=`b4;12'd203:toneR=`b4;
12'd204:toneR=`b4;12'd205:toneR=`b4;
12'd206:toneR=`b4;
12'd207:toneR=`sil;
12'd208:toneR=`b4;12'd209:toneR=`b4;
12'd210:toneR=`b4;12'd211:toneR=`b4;
12'd212:toneR=`b4;12'd213:toneR=`b4;
12'd214:toneR=`b4;
12'd215:toneR=`sil;
12'd216:toneR=`b4;12'd217:toneR=`b4;
12'd218:toneR=`b4;
12'd219:toneR=`sil;
12'd220:toneR=`b4;12'd221:toneR=`b4;
12'd222:toneR=`b4;12'd223:toneR=`b4;
12'd224:toneR=`b4;12'd225:toneR=`b4;
12'd226:toneR=`b4;
12'd227:toneR=`sil;
12'd228:toneR=`b4;12'd229:toneR=`b4;
12'd230:toneR=`b4;
12'd231:toneR=`sil;
12'd232:toneR=`b4;12'd233:toneR=`b4;
12'd234:toneR=`b4;12'd235:toneR=`b4;
12'd236:toneR=`b4;12'd237:toneR=`b4;
12'd238:toneR=`b4;
12'd239:toneR=`sil;
12'd240:toneR=`b4;12'd241:toneR=`b4;
12'd242:toneR=`b4;12'd243:toneR=`b4;
12'd244:toneR=`b4;12'd245:toneR=`b4;
12'd246:toneR=`b4;
12'd247:toneR=`sil;
12'd248:toneR=`b4;12'd249:toneR=`b4;
12'd250:toneR=`b4;12'd251:toneR=`b4;
12'd252:toneR=`b4;12'd253:toneR=`b4;
12'd254:toneR=`b4;12'd255:toneR=`b4;

12'd256:toneR=`c5;12'd257:toneR=`c5;
12'd258:toneR=`c5;12'd259:toneR=`c5;
12'd260:toneR=`c5;12'd261:toneR=`c5;
12'd262:toneR=`c5;
12'd263:toneR=`sil;
12'd264:toneR=`c5;12'd265:toneR=`c5;
12'd266:toneR=`c5;12'd267:toneR=`c5;
12'd268:toneR=`c5;12'd269:toneR=`c5;
12'd270:toneR=`c5;
12'd271:toneR=`sil;
12'd272:toneR=`c5;12'd273:toneR=`c5;
12'd274:toneR=`c5;12'd275:toneR=`c5;
12'd276:toneR=`c5;12'd277:toneR=`c5;
12'd278:toneR=`c5;
12'd279:toneR=`sil;
12'd280:toneR=`c5;12'd281:toneR=`c5;
12'd282:toneR=`c5;
12'd283:toneR=`sil;
12'd284:toneR=`c5;12'd285:toneR=`c5;
12'd286:toneR=`c5;12'd287:toneR=`c5;
12'd288:toneR=`c5;12'd289:toneR=`c5;
12'd290:toneR=`c5;
12'd291:toneR=`sil;
12'd292:toneR=`c5;12'd293:toneR=`c5;
12'd294:toneR=`c5;
12'd295:toneR=`sil;
12'd296:toneR=`c5;12'd297:toneR=`c5;
12'd298:toneR=`c5;12'd299:toneR=`c5;
12'd300:toneR=`c5;12'd301:toneR=`c5;
12'd302:toneR=`c5;
12'd303:toneR=`sil;
12'd304:toneR=`c5;12'd305:toneR=`c5;
12'd306:toneR=`c5;12'd307:toneR=`c5;
12'd308:toneR=`c5;12'd309:toneR=`c5;
12'd310:toneR=`c5;
12'd311:toneR=`sil;
12'd312:toneR=`c5;12'd313:toneR=`c5;
12'd314:toneR=`c5;12'd315:toneR=`c5;
12'd316:toneR=`c5;12'd317:toneR=`c5;
12'd318:toneR=`c5;12'd319:toneR=`c5;

12'd320:toneR=`b4;12'd321:toneR=`b4;
12'd322:toneR=`b4;12'd323:toneR=`b4;
12'd324:toneR=`b4;12'd325:toneR=`b4;
12'd326:toneR=`b4;
12'd327:toneR=`sil;
12'd328:toneR=`b4;12'd329:toneR=`b4;
12'd330:toneR=`b4;12'd331:toneR=`b4;
12'd332:toneR=`b4;12'd333:toneR=`b4;
12'd334:toneR=`b4;
12'd335:toneR=`sil;
12'd336:toneR=`b4;12'd337:toneR=`b4;
12'd338:toneR=`b4;12'd339:toneR=`b4;
12'd340:toneR=`b4;12'd341:toneR=`b4;
12'd342:toneR=`b4;
12'd343:toneR=`sil;
12'd344:toneR=`b4;12'd345:toneR=`b4;
12'd346:toneR=`b4;
12'd347:toneR=`sil;
12'd348:toneR=`b4;12'd349:toneR=`b4;
12'd350:toneR=`b4;12'd351:toneR=`b4;
12'd352:toneR=`b4;12'd353:toneR=`b4;
12'd354:toneR=`b4;
12'd355:toneR=`sil;
12'd356:toneR=`b4;12'd357:toneR=`b4;
12'd358:toneR=`b4;
12'd359:toneR=`sil;
12'd360:toneR=`b4;12'd361:toneR=`b4;
12'd362:toneR=`b4;12'd363:toneR=`b4;
12'd364:toneR=`b4;12'd365:toneR=`b4;
12'd366:toneR=`b4;
12'd367:toneR=`sil;
12'd368:toneR=`b4;12'd369:toneR=`b4;
12'd370:toneR=`b4;12'd371:toneR=`b4;
12'd372:toneR=`b4;12'd373:toneR=`b4;
12'd374:toneR=`b4;
12'd375:toneR=`sil;
12'd376:toneR=`b4;12'd377:toneR=`b4;
12'd378:toneR=`b4;12'd379:toneR=`b4;
12'd380:toneR=`b4;12'd381:toneR=`b4;
12'd382:toneR=`b4;12'd383:toneR=`b4;

12'd384:toneR=`c5;12'd385:toneR=`c5;
12'd386:toneR=`c5;12'd387:toneR=`c5;
12'd388:toneR=`c5;12'd389:toneR=`c5;
12'd390:toneR=`c5;
12'd391:toneR=`sil;
12'd392:toneR=`c5;12'd393:toneR=`c5;
12'd394:toneR=`c5;12'd395:toneR=`c5;
12'd396:toneR=`c5;12'd397:toneR=`c5;
12'd398:toneR=`c5;
12'd399:toneR=`sil;
12'd400:toneR=`c5;12'd401:toneR=`c5;
12'd402:toneR=`c5;12'd403:toneR=`c5;
12'd404:toneR=`c5;12'd405:toneR=`c5;
12'd406:toneR=`c5;
12'd407:toneR=`sil;
12'd408:toneR=`c5;12'd409:toneR=`c5;
12'd410:toneR=`c5;
12'd411:toneR=`sil;
12'd412:toneR=`c5;12'd413:toneR=`c5;
12'd414:toneR=`c5;12'd415:toneR=`c5;
12'd416:toneR=`c5;12'd417:toneR=`c5;
12'd418:toneR=`c5;
12'd419:toneR=`sil;
12'd420:toneR=`c5;12'd421:toneR=`c5;
12'd422:toneR=`c5;
12'd423:toneR=`sil;
12'd424:toneR=`c5;12'd425:toneR=`c5;
12'd426:toneR=`c5;12'd427:toneR=`c5;
12'd428:toneR=`c5;12'd429:toneR=`c5;
12'd430:toneR=`c5;
12'd431:toneR=`sil;
12'd432:toneR=`c5;12'd433:toneR=`c5;
12'd434:toneR=`c5;12'd435:toneR=`c5;
12'd436:toneR=`c5;12'd437:toneR=`c5;
12'd438:toneR=`c5;
12'd439:toneR=`sil;
12'd440:toneR=`c5;12'd441:toneR=`c5;
12'd442:toneR=`c5;12'd443:toneR=`c5;
12'd444:toneR=`c5;12'd445:toneR=`c5;
12'd446:toneR=`c5;12'd447:toneR=`c5;

12'd448:toneR=`b4;12'd449:toneR=`b4;
12'd450:toneR=`b4;12'd451:toneR=`b4;
12'd452:toneR=`b4;12'd453:toneR=`b4;
12'd454:toneR=`b4;
12'd455:toneR=`sil;
12'd456:toneR=`b4;12'd457:toneR=`b4;
12'd458:toneR=`b4;12'd459:toneR=`b4;
12'd460:toneR=`b4;12'd461:toneR=`b4;
12'd462:toneR=`b4;
12'd463:toneR=`sil;
12'd464:toneR=`b4;12'd465:toneR=`b4;
12'd466:toneR=`b4;12'd467:toneR=`b4;
12'd468:toneR=`b4;12'd469:toneR=`b4;
12'd470:toneR=`b4;
12'd471:toneR=`sil;
12'd472:toneR=`b4;12'd473:toneR=`b4;
12'd474:toneR=`b4;
12'd475:toneR=`sil;
12'd476:toneR=`b4;12'd477:toneR=`b4;
12'd478:toneR=`b4;12'd479:toneR=`b4;
12'd480:toneR=`b4;12'd481:toneR=`b4;
12'd482:toneR=`b4;
12'd483:toneR=`sil;
12'd484:toneR=`b4;12'd485:toneR=`b4;
12'd486:toneR=`b4;
12'd487:toneR=`sil;
12'd488:toneR=`b4;12'd489:toneR=`b4;
12'd490:toneR=`b4;12'd491:toneR=`b4;
12'd492:toneR=`b4;12'd493:toneR=`b4;
12'd494:toneR=`b4;
12'd495:toneR=`sil;
12'd496:toneR=`b4;12'd497:toneR=`b4;
12'd498:toneR=`b4;12'd499:toneR=`b4;
12'd500:toneR=`b4;12'd501:toneR=`b4;
12'd502:toneR=`b4;
12'd503:toneR=`sil;
12'd504:toneR=`b4;12'd505:toneR=`b4;
12'd506:toneR=`b4;12'd507:toneR=`b4;
12'd508:toneR=`b4;12'd509:toneR=`b4;
12'd510:toneR=`b4;12'd511:toneR=`b4;


                default:
                toneR=`sil;
             endcase
        end
        else if(en == `play_audio) begin
            case(ibeatNum)
                // --- Measure 1 ---
                12'd0:toneR=`a5;12'd1:toneR=`a5;
12'd2:toneR=`a5;12'd3:toneR=`a5;
12'd4:toneR=`a5;12'd5:toneR=`a5;
12'd6:toneR=`a5;12'd7:toneR=`a5;

12'd8:toneR=`f5_;12'd9:toneR=`f5_;
12'd10:toneR=`f5_;12'd11:toneR=`f5_;

12'd12:toneR=`g5;12'd13:toneR=`g5;
12'd14:toneR=`g5;12'd15:toneR=`g5;

12'd16:toneR=`a5;12'd17:toneR=`a5;
12'd18:toneR=`a5;12'd19:toneR=`a5;
12'd20:toneR=`a5;12'd21:toneR=`a5;
12'd22:toneR=`a5;12'd23:toneR=`a5;

12'd24:toneR=`f5_;12'd25:toneR=`f5_;
12'd26:toneR=`f5_;12'd27:toneR=`f5_;

12'd28:toneR=`g5;12'd29:toneR=`g5;
12'd30:toneR=`g5;12'd31:toneR=`g5;

12'd32:toneR=`a5;12'd33:toneR=`a5;
12'd34:toneR=`a5;12'd35:toneR=`a5;

12'd36:toneR=`a4;12'd37:toneR=`a4;
12'd38:toneR=`a4;12'd39:toneR=`a4;

12'd40:toneR=`b4;12'd41:toneR=`b4;
12'd42:toneR=`b4;12'd43:toneR=`b4;

12'd44:toneR=`c5_;12'd45:toneR=`c5_;
12'd46:toneR=`c5_;12'd47:toneR=`c5_;

12'd48:toneR=`d5;12'd49:toneR=`d5;
12'd50:toneR=`d5;12'd51:toneR=`d5;

12'd52:toneR=`e5;12'd53:toneR=`e5;
12'd54:toneR=`e5;12'd55:toneR=`e5;

12'd56:toneR=`f5_;12'd57:toneR=`f5_;
12'd58:toneR=`f5_;12'd59:toneR=`f5_;

12'd60:toneR=`g5;12'd61:toneR=`g5;
12'd62:toneR=`g5;12'd63:toneR=`g5;

12'd64:toneR=`f5_;12'd65:toneR=`f5_;
12'd66:toneR=`f5_;12'd67:toneR=`f5_;
12'd68:toneR=`f5_;12'd69:toneR=`f5_;
12'd70:toneR=`f5_;12'd71:toneR=`f5_;

12'd72:toneR=`d5;12'd73:toneR=`d5;
12'd74:toneR=`d5;12'd75:toneR=`d5;

12'd76:toneR=`e5;12'd77:toneR=`e5;
12'd78:toneR=`e5;12'd79:toneR=`e5;

12'd80:toneR=`f5_;12'd81:toneR=`f5_;
12'd82:toneR=`f5_;12'd83:toneR=`f5_;
12'd84:toneR=`f5_;12'd85:toneR=`f5_;
12'd86:toneR=`f5_;12'd87:toneR=`f5_;

12'd88:toneR=`f4_;12'd89:toneR=`f4_;
12'd90:toneR=`f4_;12'd91:toneR=`f4_;

12'd92:toneR=`g4;12'd93:toneR=`g4;
12'd94:toneR=`g4;12'd95:toneR=`g4;

12'd96:toneR=`a4;12'd97:toneR=`a4;
12'd98:toneR=`a4;12'd99:toneR=`a4;

12'd100:toneR=`b4;12'd101:toneR=`b4;
12'd102:toneR=`b4;12'd103:toneR=`b4;

12'd104:toneR=`a4;12'd105:toneR=`a4;
12'd106:toneR=`a4;12'd107:toneR=`a4;

12'd108:toneR=`g4;12'd109:toneR=`g4;
12'd110:toneR=`g4;12'd111:toneR=`g4;

12'd112:toneR=`a4;12'd113:toneR=`a4;
12'd114:toneR=`a4;12'd115:toneR=`a4;

12'd116:toneR=`f4_;12'd117:toneR=`f4_;
12'd118:toneR=`f4_;12'd119:toneR=`f4_;

12'd120:toneR=`g4;12'd121:toneR=`g4;
12'd122:toneR=`g4;12'd123:toneR=`g4;

12'd124:toneR=`a4;12'd125:toneR=`a4;
12'd126:toneR=`a4;12'd127:toneR=`a4;

12'd128:toneR=`g4;12'd129:toneR=`g4;
12'd130:toneR=`g4;12'd131:toneR=`g4;
12'd132:toneR=`g4;12'd133:toneR=`g4;
12'd134:toneR=`g4;12'd135:toneR=`g4;

12'd136:toneR=`b4;12'd137:toneR=`b4;
12'd138:toneR=`b4;12'd139:toneR=`b4;

12'd140:toneR=`a4;12'd141:toneR=`a4;
12'd142:toneR=`a4;12'd143:toneR=`a4;

12'd144:toneR=`g4;12'd145:toneR=`g4;
12'd146:toneR=`g4;12'd147:toneR=`g4;
12'd148:toneR=`g4;12'd149:toneR=`g4;
12'd150:toneR=`g4;12'd151:toneR=`g4;

12'd152:toneR=`f4_;12'd153:toneR=`f4_;
12'd154:toneR=`f4_;12'd155:toneR=`f4_;

12'd156:toneR=`e4;12'd157:toneR=`e4;
12'd158:toneR=`e4;12'd159:toneR=`e4;

12'd160:toneR=`f4_;12'd161:toneR=`f4_;
12'd162:toneR=`f4_;12'd163:toneR=`f4_;

12'd164:toneR=`e4;12'd165:toneR=`e4;
12'd166:toneR=`e4;12'd167:toneR=`e4;

12'd168:toneR=`d4;12'd169:toneR=`d4;
12'd170:toneR=`d4;12'd171:toneR=`d4;

12'd172:toneR=`e4;12'd173:toneR=`e4;
12'd174:toneR=`e4;12'd175:toneR=`e4;

12'd176:toneR=`f4_;12'd177:toneR=`f4_;
12'd178:toneR=`f4_;12'd179:toneR=`f4_;

12'd180:toneR=`g4;12'd181:toneR=`g4;
12'd182:toneR=`g4;12'd183:toneR=`g4;

12'd184:toneR=`a4;12'd185:toneR=`a4;
12'd186:toneR=`a4;12'd187:toneR=`a4;

12'd188:toneR=`b4;12'd189:toneR=`b4;
12'd190:toneR=`b4;12'd191:toneR=`b4;

12'd192:toneR=`g4;12'd193:toneR=`g4;
12'd194:toneR=`g4;12'd195:toneR=`g4;
12'd196:toneR=`g4;12'd197:toneR=`g4;
12'd198:toneR=`g4;12'd199:toneR=`g4;

12'd200:toneR=`b4;12'd201:toneR=`b4;
12'd202:toneR=`b4;12'd203:toneR=`b4;

12'd204:toneR=`a4;12'd205:toneR=`a4;
12'd206:toneR=`a4;12'd207:toneR=`a4;

12'd208:toneR=`b4;12'd209:toneR=`b4;
12'd210:toneR=`b4;12'd211:toneR=`b4;
12'd212:toneR=`b4;12'd213:toneR=`b4;
12'd214:toneR=`b4;12'd215:toneR=`b4;

12'd216:toneR=`c5_;12'd217:toneR=`c5_;
12'd218:toneR=`c5_;12'd219:toneR=`c5_;

12'd220:toneR=`d5;12'd221:toneR=`d5;
12'd222:toneR=`d5;12'd223:toneR=`d5;

12'd224:toneR=`a4;12'd225:toneR=`a4;
12'd226:toneR=`a4;12'd227:toneR=`a4;

12'd228:toneR=`b4;12'd229:toneR=`b4;
12'd230:toneR=`b4;12'd231:toneR=`b4;

12'd232:toneR=`c5_;12'd233:toneR=`c5_;
12'd234:toneR=`c5_;12'd235:toneR=`c5_;

12'd236:toneR=`d5;12'd237:toneR=`d5;
12'd238:toneR=`d5;12'd239:toneR=`d5;

12'd240:toneR=`e5;12'd241:toneR=`e5;
12'd242:toneR=`e5;12'd243:toneR=`e5;

12'd244:toneR=`f5_;12'd245:toneR=`f5_;
12'd246:toneR=`f5_;12'd247:toneR=`f5_;

12'd248:toneR=`g5;12'd249:toneR=`g5;
12'd250:toneR=`g5;12'd251:toneR=`g5;

12'd252:toneR=`a5;12'd253:toneR=`a5;
12'd254:toneR=`a5;12'd255:toneR=`a5;

12'd256:toneR=`f5_;12'd257:toneR=`f5_;
12'd258:toneR=`f5_;12'd259:toneR=`f5_;
12'd260:toneR=`f5_;12'd261:toneR=`f5_;
12'd262:toneR=`f5_;12'd263:toneR=`f5_;

12'd264:toneR=`d5;12'd265:toneR=`d5;
12'd266:toneR=`d5;12'd267:toneR=`d5;

12'd268:toneR=`e5;12'd269:toneR=`e5;
12'd270:toneR=`e5;12'd271:toneR=`e5;

12'd272:toneR=`f5_;12'd273:toneR=`f5_;
12'd274:toneR=`f5_;12'd275:toneR=`f5_;
12'd276:toneR=`f5_;12'd277:toneR=`f5_;
12'd278:toneR=`f5_;12'd279:toneR=`f5_;

12'd280:toneR=`e5;12'd281:toneR=`e5;
12'd282:toneR=`e5;12'd283:toneR=`e5;

12'd284:toneR=`d5;12'd285:toneR=`d5;
12'd286:toneR=`d5;12'd287:toneR=`d5;

12'd288:toneR=`e5;12'd289:toneR=`e5;
12'd290:toneR=`e5;12'd291:toneR=`e5;

12'd292:toneR=`c5_;12'd293:toneR=`c5_;
12'd294:toneR=`c5_;12'd295:toneR=`c5_;

12'd296:toneR=`d5;12'd297:toneR=`d5;
12'd298:toneR=`d5;12'd299:toneR=`d5;

12'd300:toneR=`e5;12'd301:toneR=`e5;
12'd302:toneR=`e5;12'd303:toneR=`e5;

12'd304:toneR=`f5_;12'd305:toneR=`f5_;
12'd306:toneR=`f5_;12'd307:toneR=`f5_;

12'd308:toneR=`e5;12'd309:toneR=`e5;
12'd310:toneR=`e5;12'd311:toneR=`e5;

12'd312:toneR=`d5;12'd313:toneR=`d5;
12'd314:toneR=`d5;12'd315:toneR=`d5;

12'd316:toneR=`c5_;12'd317:toneR=`c5_;
12'd318:toneR=`c5_;12'd319:toneR=`c5_;

12'd320:toneR=`d5;12'd321:toneR=`d5;
12'd322:toneR=`d5;12'd323:toneR=`d5;
12'd324:toneR=`d5;12'd325:toneR=`d5;
12'd326:toneR=`d5;12'd327:toneR=`d5;

12'd328:toneR=`b4;12'd329:toneR=`b4;
12'd330:toneR=`b4;12'd331:toneR=`b4;

12'd332:toneR=`c5_;12'd333:toneR=`c5_;
12'd334:toneR=`c5_;12'd335:toneR=`c5_;

12'd336:toneR=`d5;12'd337:toneR=`d5;
12'd338:toneR=`d5;12'd339:toneR=`d5;
12'd340:toneR=`d5;12'd341:toneR=`d5;
12'd342:toneR=`d5;12'd343:toneR=`d5;

12'd344:toneR=`d4;12'd345:toneR=`d4;
12'd346:toneR=`d4;12'd347:toneR=`d4;

12'd348:toneR=`e4;12'd349:toneR=`e4;
12'd350:toneR=`e4;12'd351:toneR=`e4;

12'd352:toneR=`f4_;12'd353:toneR=`f4_;
12'd354:toneR=`f4_;12'd355:toneR=`f4_;

12'd356:toneR=`g4;12'd357:toneR=`g4;
12'd358:toneR=`g4;12'd359:toneR=`g4;

12'd360:toneR=`f4_;12'd361:toneR=`f4_;
12'd362:toneR=`f4_;12'd363:toneR=`f4_;

12'd364:toneR=`e4;12'd365:toneR=`e4;
12'd366:toneR=`e4;12'd367:toneR=`e4;

12'd368:toneR=`f4_;12'd369:toneR=`f4_;
12'd370:toneR=`f4_;12'd371:toneR=`f4_;

12'd372:toneR=`d5;12'd373:toneR=`d5;
12'd374:toneR=`d5;12'd375:toneR=`d5;

12'd376:toneR=`c5_;12'd377:toneR=`c5_;
12'd378:toneR=`c5_;12'd379:toneR=`c5_;

12'd380:toneR=`d5;12'd381:toneR=`d5;
12'd382:toneR=`d5;12'd383:toneR=`d5;

12'd384:toneR=`b4;12'd385:toneR=`b4;
12'd386:toneR=`b4;12'd387:toneR=`b4;
12'd388:toneR=`b4;12'd389:toneR=`b4;
12'd390:toneR=`b4;12'd391:toneR=`b4;

12'd392:toneR=`d5;12'd393:toneR=`d5;
12'd394:toneR=`d5;12'd395:toneR=`d5;

12'd396:toneR=`c5_;12'd397:toneR=`c5_;
12'd398:toneR=`c5_;12'd399:toneR=`c5_;

12'd400:toneR=`b4;12'd401:toneR=`b4;
12'd402:toneR=`b4;12'd403:toneR=`b4;
12'd404:toneR=`b4;12'd405:toneR=`b4;
12'd406:toneR=`b4;12'd407:toneR=`b4;

12'd408:toneR=`a4;12'd409:toneR=`a4;
12'd410:toneR=`a4;12'd411:toneR=`a4;

12'd412:toneR=`g4;12'd413:toneR=`g4;
12'd414:toneR=`g4;12'd415:toneR=`g4;

12'd416:toneR=`a4;12'd417:toneR=`a4;
12'd418:toneR=`a4;12'd419:toneR=`a4;

12'd420:toneR=`g4;12'd421:toneR=`g4;
12'd422:toneR=`g4;12'd423:toneR=`g4;

12'd424:toneR=`f4_;12'd425:toneR=`f4_;
12'd426:toneR=`f4_;12'd427:toneR=`f4_;

12'd428:toneR=`g4;12'd429:toneR=`g4;
12'd430:toneR=`g4;12'd431:toneR=`g4;

12'd432:toneR=`a4;12'd433:toneR=`a4;
12'd434:toneR=`a4;12'd435:toneR=`a4;

12'd436:toneR=`b4;12'd437:toneR=`b4;
12'd438:toneR=`b4;12'd439:toneR=`b4;

12'd440:toneR=`c5_;12'd441:toneR=`c5_;
12'd442:toneR=`c5_;12'd443:toneR=`c5_;

12'd444:toneR=`d5;12'd445:toneR=`d5;
12'd446:toneR=`d5;12'd447:toneR=`d5;

12'd448:toneR=`b4;12'd449:toneR=`b4;
12'd450:toneR=`b4;12'd451:toneR=`b4;
12'd452:toneR=`b4;12'd453:toneR=`b4;
12'd454:toneR=`b4;12'd455:toneR=`b4;

12'd456:toneR=`d5;12'd457:toneR=`d5;
12'd458:toneR=`d5;12'd459:toneR=`d5;

12'd460:toneR=`c5_;12'd461:toneR=`c5_;
12'd462:toneR=`c5_;12'd463:toneR=`c5_;

12'd464:toneR=`d5;12'd465:toneR=`d5;
12'd466:toneR=`d5;12'd467:toneR=`d5;
12'd468:toneR=`d5;12'd469:toneR=`d5;
12'd470:toneR=`d5;12'd471:toneR=`d5;

12'd472:toneR=`c5_;12'd473:toneR=`c5_;
12'd474:toneR=`c5_;12'd475:toneR=`c5_;

12'd476:toneR=`b4;12'd477:toneR=`b4;
12'd478:toneR=`b4;12'd479:toneR=`b4;

12'd480:toneR=`c5_;12'd481:toneR=`c5_;
12'd482:toneR=`c5_;12'd483:toneR=`c5_;

12'd484:toneR=`d5;12'd485:toneR=`d5;
12'd486:toneR=`d5;12'd487:toneR=`d5;

12'd488:toneR=`e5;12'd489:toneR=`e5;
12'd490:toneR=`e5;12'd491:toneR=`e5;

12'd492:toneR=`d5;12'd493:toneR=`d5;
12'd494:toneR=`d5;12'd495:toneR=`d5;

12'd496:toneR=`c5_;12'd497:toneR=`c5_;
12'd498:toneR=`c5_;12'd499:toneR=`c5_;

12'd500:toneR=`d5;12'd501:toneR=`d5;
12'd502:toneR=`d5;12'd503:toneR=`d5;

12'd504:toneR=`b4;12'd505:toneR=`b4;
12'd506:toneR=`b4;12'd507:toneR=`b4;

12'd508:toneR=`c5_;12'd509:toneR=`c5_;
12'd510:toneR=`c5_;12'd511:toneR=`c5_;

                default: toneR = `sil;
            endcase
        end
        else if(en==`win_audio) begin
            case(ibeatNum)
            12'd0:toneR=`g3;12'd1:toneR=`g3;
12'd2:toneR=`g3;12'd3:toneR=`g3;
12'd4:toneR=`g3;
12'd5:toneR=`c4;12'd6:toneR=`c4;
12'd7:toneR=`c4;12'd8:toneR=`c4;
12'd9:toneR=`c4;12'd10:toneR=`c4;

12'd11:toneR=`e4;12'd12:toneR=`e4;
12'd13:toneR=`e4;12'd14:toneR=`e4;
12'd15:toneR=`e4;
12'd16:toneR=`g4;12'd17:toneR=`g4;
12'd18:toneR=`g4;12'd19:toneR=`g4;
12'd20:toneR=`g4;
12'd21:toneR=`c5;12'd22:toneR=`c5;
12'd23:toneR=`c5;12'd24:toneR=`c5;
12'd25:toneR=`c5;12'd26:toneR=`c5;

12'd27:toneR=`e5;12'd28:toneR=`e5;
12'd29:toneR=`e5;12'd30:toneR=`e5;
12'd31:toneR=`e5;
12'd32:toneR=`g5;12'd33:toneR=`g5;
12'd34:toneR=`g5;12'd35:toneR=`g5;
12'd36:toneR=`g5;12'd37:toneR=`g5;
12'd38:toneR=`g5;12'd39:toneR=`g5;
12'd40:toneR=`g5;12'd41:toneR=`g5;
12'd42:toneR=`g5;12'd43:toneR=`g5;
12'd44:toneR=`g5;12'd45:toneR=`g5;
12'd46:toneR=`g5;12'd47:toneR=`g5;

12'd48:toneR=`e5;12'd49:toneR=`e5;
12'd50:toneR=`e5;12'd51:toneR=`e5;
12'd52:toneR=`e5;12'd53:toneR=`e5;
12'd54:toneR=`e5;12'd55:toneR=`e5;
12'd56:toneR=`e5;12'd57:toneR=`e5;
12'd58:toneR=`e5;12'd59:toneR=`e5;
12'd60:toneR=`e5;12'd61:toneR=`e5;
12'd62:toneR=`e5;12'd63:toneR=`e5;

12'd64:toneR=`g3_;12'd65:toneR=`g3_;
12'd66:toneR=`g3_;12'd67:toneR=`g3_;
12'd68:toneR=`g3_;
12'd69:toneR=`c4;12'd70:toneR=`c4;
12'd71:toneR=`c4;12'd72:toneR=`c4;
12'd73:toneR=`c4;12'd74:toneR=`c4;

12'd75:toneR=`d4_;12'd76:toneR=`d4_;
12'd77:toneR=`d4_;12'd78:toneR=`d4_;
12'd79:toneR=`d4_;
12'd80:toneR=`g4_;12'd81:toneR=`g4_;
12'd82:toneR=`g4_;12'd83:toneR=`g4_;
12'd84:toneR=`g4_;
12'd85:toneR=`c5;12'd86:toneR=`c5;
12'd87:toneR=`c5;12'd88:toneR=`c5;
12'd89:toneR=`c5;12'd90:toneR=`c5;

12'd91:toneR=`d5_;12'd92:toneR=`d5_;
12'd93:toneR=`d5_;12'd94:toneR=`d5_;
12'd95:toneR=`d5_;
12'd96:toneR=`g5_;12'd97:toneR=`g5_;
12'd98:toneR=`g5_;12'd99:toneR=`g5_;
12'd100:toneR=`g5_;12'd101:toneR=`g5_;
12'd102:toneR=`g5_;12'd103:toneR=`g5_;
12'd104:toneR=`g5_;12'd105:toneR=`g5_;
12'd106:toneR=`g5_;12'd107:toneR=`g5_;
12'd108:toneR=`g5_;12'd109:toneR=`g5_;
12'd110:toneR=`g5_;12'd111:toneR=`g5_;

12'd112:toneR=`e5;12'd113:toneR=`e5;
12'd114:toneR=`e5;12'd115:toneR=`e5;
12'd116:toneR=`e5;12'd117:toneR=`e5;
12'd118:toneR=`e5;12'd119:toneR=`e5;
12'd120:toneR=`e5;12'd121:toneR=`e5;
12'd122:toneR=`e5;12'd123:toneR=`e5;
12'd124:toneR=`e5;12'd125:toneR=`e5;
12'd126:toneR=`e5;12'd127:toneR=`e5;

12'd128:toneR=`a3_;12'd129:toneR=`a3_;
12'd130:toneR=`a3_;12'd131:toneR=`a3_;
12'd132:toneR=`a3_;
12'd133:toneR=`d4;12'd134:toneR=`d4;
12'd135:toneR=`d4;12'd136:toneR=`d4;
12'd137:toneR=`d4;12'd138:toneR=`d4;

12'd139:toneR=`f4;12'd140:toneR=`f4;
12'd141:toneR=`f4;12'd142:toneR=`f4;
12'd143:toneR=`f4;
12'd144:toneR=`a4_;12'd145:toneR=`a4_;
12'd146:toneR=`a4_;12'd147:toneR=`a4_;
12'd148:toneR=`a4_;
12'd149:toneR=`d5;12'd150:toneR=`d5;
12'd151:toneR=`d5;12'd152:toneR=`d5;
12'd153:toneR=`d5;12'd154:toneR=`d5;

12'd155:toneR=`f5;12'd156:toneR=`f5;
12'd157:toneR=`f5;12'd158:toneR=`f5;
12'd159:toneR=`f5;
12'd160:toneR=`a5_;12'd161:toneR=`a5_;
12'd162:toneR=`a5_;12'd163:toneR=`a5_;
12'd164:toneR=`a5_;12'd165:toneR=`a5_;
12'd166:toneR=`a5_;12'd167:toneR=`a5_;
12'd168:toneR=`a5_;12'd169:toneR=`a5_;
12'd170:toneR=`a5_;12'd171:toneR=`a5_;
12'd172:toneR=`a5_;12'd173:toneR=`a5_;
12'd174:toneR=`a5_;12'd175:toneR=`a5_;

12'd176:toneR=`b5;12'd177:toneR=`b5;
12'd178:toneR=`b5;12'd179:toneR=`b5;
12'd180:toneR=`b5;
12'd181:toneR=`sil;
12'd182:toneR=`b5;12'd183:toneR=`b5;
12'd184:toneR=`b5;12'd185:toneR=`b5;
12'd186:toneR=`b5;
12'd187:toneR=`sil;
12'd188:toneR=`b5;12'd189:toneR=`b5;
12'd190:toneR=`b5;12'd191:toneR=`b5;

12'd192:toneR=`c6;12'd193:toneR=`c6;
12'd194:toneR=`c6;12'd195:toneR=`c6;
12'd196:toneR=`c6;12'd197:toneR=`c6;
12'd198:toneR=`c6;12'd199:toneR=`c6;
12'd200:toneR=`c6;12'd201:toneR=`c6;
12'd202:toneR=`c6;12'd203:toneR=`c6;
12'd204:toneR=`c6;12'd205:toneR=`c6;
12'd206:toneR=`c6;12'd207:toneR=`c6;
12'd208:toneR=`c6;12'd209:toneR=`c6;
12'd210:toneR=`c6;12'd211:toneR=`c6;
12'd212:toneR=`c6;12'd213:toneR=`c6;
12'd214:toneR=`c6;12'd215:toneR=`c6;
12'd216:toneR=`c6;12'd217:toneR=`c6;
12'd218:toneR=`c6;12'd219:toneR=`c6;
12'd220:toneR=`c6;12'd221:toneR=`c6;
12'd222:toneR=`c6;12'd223:toneR=`c6;
12'd224:toneR=`c6;12'd225:toneR=`c6;
12'd226:toneR=`c6;12'd227:toneR=`c6;
12'd228:toneR=`c6;12'd229:toneR=`c6;
12'd230:toneR=`c6;12'd231:toneR=`c6;
12'd232:toneR=`c6;12'd233:toneR=`c6;
12'd234:toneR=`c6;12'd235:toneR=`c6;
12'd236:toneR=`c6;12'd237:toneR=`c6;
12'd238:toneR=`c6;12'd239:toneR=`c6;
12'd240:toneR=`c6;12'd241:toneR=`c6;
12'd242:toneR=`c6;12'd243:toneR=`c6;
12'd244:toneR=`c6;12'd245:toneR=`c6;
12'd246:toneR=`c6;12'd247:toneR=`c6;
12'd248:toneR=`c6;12'd249:toneR=`c6;
12'd250:toneR=`c6;12'd251:toneR=`c6;
12'd252:toneR=`c6;12'd253:toneR=`c6;
12'd254:toneR=`c6;12'd255:toneR=`c6;
 default: toneR = `sil;
            endcase
        end
        else if(en==`loss_audio)begin
             case(ibeatNum)
           12'd0:toneR=`c5;12'd1:toneR=`c5;
12'd2:toneR=`c5;12'd3:toneR=`c5;

12'd4:toneR=`sil;12'd5:toneR=`sil;
12'd6:toneR=`sil;12'd7:toneR=`sil;

12'd8:toneR=`sil;12'd9:toneR=`sil;
12'd10:toneR=`sil;12'd11:toneR=`sil;

12'd12:toneR=`g4;12'd13:toneR=`g4;
12'd14:toneR=`g4;12'd15:toneR=`g4;

12'd16:toneR=`sil;12'd17:toneR=`sil;
12'd18:toneR=`sil;12'd19:toneR=`sil;
12'd20:toneR=`sil;12'd21:toneR=`sil;
12'd22:toneR=`sil;12'd23:toneR=`sil;

12'd24:toneR=`e4;12'd25:toneR=`e4;
12'd26:toneR=`e4;12'd27:toneR=`e4;

12'd28:toneR=`sil;12'd29:toneR=`sil;
12'd30:toneR=`sil;12'd31:toneR=`sil;

12'd32:toneR=`a4;12'd33:toneR=`a4;
12'd34:toneR=`a4;12'd35:toneR=`a4;
12'd36:toneR=`a4;
12'd37:toneR=`b4;12'd38:toneR=`b4;
12'd39:toneR=`b4;12'd40:toneR=`b4;
12'd41:toneR=`b4;12'd42:toneR=`b4;

12'd43:toneR=`a4;12'd44:toneR=`a4;
12'd45:toneR=`a4;12'd46:toneR=`a4;
12'd47:toneR=`a4;
12'd48:toneR=`g4;12'd49:toneR=`g4;
12'd50:toneR=`g4;12'd51:toneR=`g4;
12'd52:toneR=`g4;
12'd53:toneR=`a4_;12'd54:toneR=`a4_;
12'd55:toneR=`a4_;12'd56:toneR=`a4_;
12'd57:toneR=`a4_;12'd58:toneR=`a4_;

12'd59:toneR=`g4;12'd60:toneR=`g4;
12'd61:toneR=`g4;12'd62:toneR=`g4;
12'd63:toneR=`g4;
12'd64:toneR=`g4;12'd65:toneR=`g4;
12'd66:toneR=`g4;12'd67:toneR=`g4;
12'd68:toneR=`g4;12'd69:toneR=`g4;
12'd70:toneR=`g4;12'd71:toneR=`g4;

12'd72:toneR=`g4;12'd73:toneR=`g4;
12'd74:toneR=`g4;12'd75:toneR=`g4;
12'd76:toneR=`g4;12'd77:toneR=`g4;
12'd78:toneR=`g4;12'd79:toneR=`g4;

12'd80:toneR=`g4;12'd81:toneR=`g4;
12'd82:toneR=`g4;12'd83:toneR=`g4;
12'd84:toneR=`g4;12'd85:toneR=`g4;
12'd86:toneR=`g4;12'd87:toneR=`g4;
12'd88:toneR=`g4;12'd89:toneR=`g4;
12'd90:toneR=`g4;12'd91:toneR=`g4;
12'd92:toneR=`g4;12'd93:toneR=`g4;
12'd94:toneR=`g4;12'd95:toneR=`g4;
12'd96:toneR=`g4;12'd97:toneR=`g4;
12'd98:toneR=`g4;12'd99:toneR=`g4;
12'd100:toneR=`g4;12'd101:toneR=`g4;
12'd102:toneR=`g4;12'd103:toneR=`g4;
12'd104:toneR=`g4;12'd105:toneR=`g4;
12'd106:toneR=`g4;12'd107:toneR=`g4;
12'd108:toneR=`g4;12'd109:toneR=`g4;
12'd110:toneR=`g4;12'd111:toneR=`g4;
12'd112:toneR=`g4;12'd113:toneR=`g4;
12'd114:toneR=`g4;12'd115:toneR=`g4;
12'd116:toneR=`g4;12'd117:toneR=`g4;
12'd118:toneR=`g4;12'd119:toneR=`g4;
12'd120:toneR=`g4;12'd121:toneR=`g4;
12'd122:toneR=`g4;12'd123:toneR=`g4;
12'd124:toneR=`g4;12'd125:toneR=`g4;
12'd126:toneR=`g4;12'd127:toneR=`g4;
 default: toneR = `sil;
            endcase
        end
        else begin
            toneR = `sil;
        end
        
    end

    always @(*) begin
        if(en==`play_fast_audio)begin
            case(ibeatNum)
            12'd0:toneL=`d4;12'd1:toneL=`d4;
12'd2:toneL=`d4;12'd3:toneL=`d4;
12'd4:toneL=`d4;12'd5:toneL=`d4;
12'd6:toneL=`d4;
12'd7:toneL=`sil;
12'd8:toneL=`d4;12'd9:toneL=`d4;
12'd10:toneL=`d4;12'd11:toneL=`d4;
12'd12:toneL=`d4;12'd13:toneL=`d4;
12'd14:toneL=`d4;
12'd15:toneL=`sil;
12'd16:toneL=`d4;12'd17:toneL=`d4;
12'd18:toneL=`d4;12'd19:toneL=`d4;
12'd20:toneL=`d4;12'd21:toneL=`d4;
12'd22:toneL=`d4;
12'd23:toneL=`sil;
12'd24:toneL=`d4;12'd25:toneL=`d4;
12'd26:toneL=`d4;
12'd27:toneL=`sil;
12'd28:toneL=`d4;12'd29:toneL=`d4;
12'd30:toneL=`d4;12'd31:toneL=`d4;
12'd32:toneL=`d4;12'd33:toneL=`d4;
12'd34:toneL=`d4;
12'd35:toneL=`sil;
12'd36:toneL=`d4;12'd37:toneL=`d4;
12'd38:toneL=`d4;
12'd39:toneL=`sil;
12'd40:toneL=`d4;12'd41:toneL=`d4;
12'd42:toneL=`d4;12'd43:toneL=`d4;
12'd44:toneL=`d4;12'd45:toneL=`d4;
12'd46:toneL=`d4;
12'd47:toneL=`sil;
12'd48:toneL=`d4;12'd49:toneL=`d4;
12'd50:toneL=`d4;12'd51:toneL=`d4;
12'd52:toneL=`d4;12'd53:toneL=`d4;
12'd54:toneL=`d4;
12'd55:toneL=`sil;
12'd56:toneL=`d4;12'd57:toneL=`d4;
12'd58:toneL=`d4;12'd59:toneL=`d4;
12'd60:toneL=`d4;12'd61:toneL=`d4;
12'd62:toneL=`d4;12'd63:toneL=`d4;

12'd64:toneL=`d4;12'd65:toneL=`d4;
12'd66:toneL=`d4;12'd67:toneL=`d4;
12'd68:toneL=`d4;12'd69:toneL=`d4;
12'd70:toneL=`d4;
12'd71:toneL=`sil;
12'd72:toneL=`d4;12'd73:toneL=`d4;
12'd74:toneL=`d4;12'd75:toneL=`d4;
12'd76:toneL=`d4;12'd77:toneL=`d4;
12'd78:toneL=`d4;
12'd79:toneL=`sil;
12'd80:toneL=`d4;12'd81:toneL=`d4;
12'd82:toneL=`d4;12'd83:toneL=`d4;
12'd84:toneL=`d4;12'd85:toneL=`d4;
12'd86:toneL=`d4;
12'd87:toneL=`sil;
12'd88:toneL=`d4;12'd89:toneL=`d4;
12'd90:toneL=`d4;
12'd91:toneL=`sil;
12'd92:toneL=`d4;12'd93:toneL=`d4;
12'd94:toneL=`d4;12'd95:toneL=`d4;
12'd96:toneL=`d4;12'd97:toneL=`d4;
12'd98:toneL=`d4;
12'd99:toneL=`sil;
12'd100:toneL=`d4;12'd101:toneL=`d4;
12'd102:toneL=`d4;
12'd103:toneL=`sil;
12'd104:toneL=`d4;12'd105:toneL=`d4;
12'd106:toneL=`d4;12'd107:toneL=`d4;
12'd108:toneL=`d4;12'd109:toneL=`d4;
12'd110:toneL=`d4;
12'd111:toneL=`sil;
12'd112:toneL=`d4;12'd113:toneL=`d4;
12'd114:toneL=`d4;12'd115:toneL=`d4;
12'd116:toneL=`d4;12'd117:toneL=`d4;
12'd118:toneL=`d4;
12'd119:toneL=`sil;
12'd120:toneL=`d4;12'd121:toneL=`d4;
12'd122:toneL=`d4;12'd123:toneL=`d4;
12'd124:toneL=`d4;12'd125:toneL=`d4;
12'd126:toneL=`d4;12'd127:toneL=`d4;

12'd128:toneL=`d4;12'd129:toneL=`d4;
12'd130:toneL=`d4;12'd131:toneL=`d4;
12'd132:toneL=`d4;12'd133:toneL=`d4;
12'd134:toneL=`d4;
12'd135:toneL=`sil;
12'd136:toneL=`d4;12'd137:toneL=`d4;
12'd138:toneL=`d4;12'd139:toneL=`d4;
12'd140:toneL=`d4;12'd141:toneL=`d4;
12'd142:toneL=`d4;
12'd143:toneL=`sil;
12'd144:toneL=`d4;12'd145:toneL=`d4;
12'd146:toneL=`d4;12'd147:toneL=`d4;
12'd148:toneL=`d4;12'd149:toneL=`d4;
12'd150:toneL=`d4;
12'd151:toneL=`sil;
12'd152:toneL=`d4;12'd153:toneL=`d4;
12'd154:toneL=`d4;
12'd155:toneL=`sil;
12'd156:toneL=`d4;12'd157:toneL=`d4;
12'd158:toneL=`d4;12'd159:toneL=`d4;
12'd160:toneL=`d4;12'd161:toneL=`d4;
12'd162:toneL=`d4;
12'd163:toneL=`sil;
12'd164:toneL=`d4;12'd165:toneL=`d4;
12'd166:toneL=`d4;
12'd167:toneL=`sil;
12'd168:toneL=`d4;12'd169:toneL=`d4;
12'd170:toneL=`d4;12'd171:toneL=`d4;
12'd172:toneL=`d4;12'd173:toneL=`d4;
12'd174:toneL=`d4;
12'd175:toneL=`sil;
12'd176:toneL=`d4;12'd177:toneL=`d4;
12'd178:toneL=`d4;12'd179:toneL=`d4;
12'd180:toneL=`d4;12'd181:toneL=`d4;
12'd182:toneL=`d4;
12'd183:toneL=`sil;
12'd184:toneL=`d4;12'd185:toneL=`d4;
12'd186:toneL=`d4;12'd187:toneL=`d4;
12'd188:toneL=`d4;12'd189:toneL=`d4;
12'd190:toneL=`d4;12'd191:toneL=`d4;

12'd192:toneL=`d4;12'd193:toneL=`d4;
12'd194:toneL=`d4;12'd195:toneL=`d4;
12'd196:toneL=`d4;12'd197:toneL=`d4;
12'd198:toneL=`d4;
12'd199:toneL=`sil;
12'd200:toneL=`d4;12'd201:toneL=`d4;
12'd202:toneL=`d4;12'd203:toneL=`d4;
12'd204:toneL=`d4;12'd205:toneL=`d4;
12'd206:toneL=`d4;
12'd207:toneL=`sil;
12'd208:toneL=`d4;12'd209:toneL=`d4;
12'd210:toneL=`d4;12'd211:toneL=`d4;
12'd212:toneL=`d4;12'd213:toneL=`d4;
12'd214:toneL=`d4;
12'd215:toneL=`sil;
12'd216:toneL=`d4;12'd217:toneL=`d4;
12'd218:toneL=`d4;
12'd219:toneL=`sil;
12'd220:toneL=`d4;12'd221:toneL=`d4;
12'd222:toneL=`d4;12'd223:toneL=`d4;
12'd224:toneL=`d4;12'd225:toneL=`d4;
12'd226:toneL=`d4;
12'd227:toneL=`sil;
12'd228:toneL=`d4;12'd229:toneL=`d4;
12'd230:toneL=`d4;
12'd231:toneL=`sil;
12'd232:toneL=`d4;12'd233:toneL=`d4;
12'd234:toneL=`d4;12'd235:toneL=`d4;
12'd236:toneL=`d4;12'd237:toneL=`d4;
12'd238:toneL=`d4;
12'd239:toneL=`sil;
12'd240:toneL=`d4;12'd241:toneL=`d4;
12'd242:toneL=`d4;12'd243:toneL=`d4;
12'd244:toneL=`d4;12'd245:toneL=`d4;
12'd246:toneL=`d4;
12'd247:toneL=`sil;
12'd248:toneL=`d4;12'd249:toneL=`d4;
12'd250:toneL=`d4;12'd251:toneL=`d4;
12'd252:toneL=`d4;12'd253:toneL=`d4;
12'd254:toneL=`d4;12'd255:toneL=`d4;

12'd256:toneL=`d4;12'd257:toneL=`d4;
12'd258:toneL=`d4;12'd259:toneL=`d4;
12'd260:toneL=`d4;12'd261:toneL=`d4;
12'd262:toneL=`d4;
12'd263:toneL=`sil;
12'd264:toneL=`d4;12'd265:toneL=`d4;
12'd266:toneL=`d4;12'd267:toneL=`d4;
12'd268:toneL=`d4;12'd269:toneL=`d4;
12'd270:toneL=`d4;
12'd271:toneL=`sil;
12'd272:toneL=`d4;12'd273:toneL=`d4;
12'd274:toneL=`d4;12'd275:toneL=`d4;
12'd276:toneL=`d4;12'd277:toneL=`d4;
12'd278:toneL=`d4;
12'd279:toneL=`sil;
12'd280:toneL=`d4;12'd281:toneL=`d4;
12'd282:toneL=`d4;
12'd283:toneL=`sil;
12'd284:toneL=`d4;12'd285:toneL=`d4;
12'd286:toneL=`d4;12'd287:toneL=`d4;
12'd288:toneL=`d4;12'd289:toneL=`d4;
12'd290:toneL=`d4;
12'd291:toneL=`sil;
12'd292:toneL=`d4;12'd293:toneL=`d4;
12'd294:toneL=`d4;
12'd295:toneL=`sil;
12'd296:toneL=`d4;12'd297:toneL=`d4;
12'd298:toneL=`d4;12'd299:toneL=`d4;
12'd300:toneL=`d4;12'd301:toneL=`d4;
12'd302:toneL=`d4;
12'd303:toneL=`sil;
12'd304:toneL=`d4;12'd305:toneL=`d4;
12'd306:toneL=`d4;12'd307:toneL=`d4;
12'd308:toneL=`d4;12'd309:toneL=`d4;
12'd310:toneL=`d4;
12'd311:toneL=`sil;
12'd312:toneL=`d4;12'd313:toneL=`d4;
12'd314:toneL=`d4;12'd315:toneL=`d4;
12'd316:toneL=`d4;12'd317:toneL=`d4;
12'd318:toneL=`d4;12'd319:toneL=`d4;

12'd320:toneL=`d4;12'd321:toneL=`d4;
12'd322:toneL=`d4;12'd323:toneL=`d4;
12'd324:toneL=`d4;12'd325:toneL=`d4;
12'd326:toneL=`d4;
12'd327:toneL=`sil;
12'd328:toneL=`d4;12'd329:toneL=`d4;
12'd330:toneL=`d4;12'd331:toneL=`d4;
12'd332:toneL=`d4;12'd333:toneL=`d4;
12'd334:toneL=`d4;
12'd335:toneL=`sil;
12'd336:toneL=`d4;12'd337:toneL=`d4;
12'd338:toneL=`d4;12'd339:toneL=`d4;
12'd340:toneL=`d4;12'd341:toneL=`d4;
12'd342:toneL=`d4;
12'd343:toneL=`sil;
12'd344:toneL=`d4;12'd345:toneL=`d4;
12'd346:toneL=`d4;
12'd347:toneL=`sil;
12'd348:toneL=`d4;12'd349:toneL=`d4;
12'd350:toneL=`d4;12'd351:toneL=`d4;
12'd352:toneL=`d4;12'd353:toneL=`d4;
12'd354:toneL=`d4;
12'd355:toneL=`sil;
12'd356:toneL=`d4;12'd357:toneL=`d4;
12'd358:toneL=`d4;
12'd359:toneL=`sil;
12'd360:toneL=`d4;12'd361:toneL=`d4;
12'd362:toneL=`d4;12'd363:toneL=`d4;
12'd364:toneL=`d4;12'd365:toneL=`d4;
12'd366:toneL=`d4;
12'd367:toneL=`sil;
12'd368:toneL=`d4;12'd369:toneL=`d4;
12'd370:toneL=`d4;12'd371:toneL=`d4;
12'd372:toneL=`d4;12'd373:toneL=`d4;
12'd374:toneL=`d4;
12'd375:toneL=`sil;
12'd376:toneL=`d4;12'd377:toneL=`d4;
12'd378:toneL=`d4;12'd379:toneL=`d4;
12'd380:toneL=`d4;12'd381:toneL=`d4;
12'd382:toneL=`d4;12'd383:toneL=`d4;

12'd384:toneL=`d4;12'd385:toneL=`d4;
12'd386:toneL=`d4;12'd387:toneL=`d4;
12'd388:toneL=`d4;12'd389:toneL=`d4;
12'd390:toneL=`d4;
12'd391:toneL=`sil;
12'd392:toneL=`d4;12'd393:toneL=`d4;
12'd394:toneL=`d4;12'd395:toneL=`d4;
12'd396:toneL=`d4;12'd397:toneL=`d4;
12'd398:toneL=`d4;
12'd399:toneL=`sil;
12'd400:toneL=`d4;12'd401:toneL=`d4;
12'd402:toneL=`d4;12'd403:toneL=`d4;
12'd404:toneL=`d4;12'd405:toneL=`d4;
12'd406:toneL=`d4;
12'd407:toneL=`sil;
12'd408:toneL=`d4;12'd409:toneL=`d4;
12'd410:toneL=`d4;
12'd411:toneL=`sil;
12'd412:toneL=`d4;12'd413:toneL=`d4;
12'd414:toneL=`d4;12'd415:toneL=`d4;
12'd416:toneL=`d4;12'd417:toneL=`d4;
12'd418:toneL=`d4;
12'd419:toneL=`sil;
12'd420:toneL=`d4;12'd421:toneL=`d4;
12'd422:toneL=`d4;
12'd423:toneL=`sil;
12'd424:toneL=`d4;12'd425:toneL=`d4;
12'd426:toneL=`d4;12'd427:toneL=`d4;
12'd428:toneL=`d4;12'd429:toneL=`d4;
12'd430:toneL=`d4;
12'd431:toneL=`sil;
12'd432:toneL=`d4;12'd433:toneL=`d4;
12'd434:toneL=`d4;12'd435:toneL=`d4;
12'd436:toneL=`d4;12'd437:toneL=`d4;
12'd438:toneL=`d4;
12'd439:toneL=`sil;
12'd440:toneL=`d4;12'd441:toneL=`d4;
12'd442:toneL=`d4;12'd443:toneL=`d4;
12'd444:toneL=`d4;12'd445:toneL=`d4;
12'd446:toneL=`d4;12'd447:toneL=`d4;

12'd448:toneL=`d4;12'd449:toneL=`d4;
12'd450:toneL=`d4;12'd451:toneL=`d4;
12'd452:toneL=`d4;12'd453:toneL=`d4;
12'd454:toneL=`d4;
12'd455:toneL=`sil;
12'd456:toneL=`d4;12'd457:toneL=`d4;
12'd458:toneL=`d4;12'd459:toneL=`d4;
12'd460:toneL=`d4;12'd461:toneL=`d4;
12'd462:toneL=`d4;
12'd463:toneL=`sil;
12'd464:toneL=`d4;12'd465:toneL=`d4;
12'd466:toneL=`d4;12'd467:toneL=`d4;
12'd468:toneL=`d4;12'd469:toneL=`d4;
12'd470:toneL=`d4;
12'd471:toneL=`sil;
12'd472:toneL=`d4;12'd473:toneL=`d4;
12'd474:toneL=`d4;
12'd475:toneL=`sil;
12'd476:toneL=`d4;12'd477:toneL=`d4;
12'd478:toneL=`d4;12'd479:toneL=`d4;
12'd480:toneL=`d4;12'd481:toneL=`d4;
12'd482:toneL=`d4;
12'd483:toneL=`sil;
12'd484:toneL=`d4;12'd485:toneL=`d4;
12'd486:toneL=`d4;
12'd487:toneL=`sil;
12'd488:toneL=`d4;12'd489:toneL=`d4;
12'd490:toneL=`d4;12'd491:toneL=`d4;
12'd492:toneL=`d4;12'd493:toneL=`d4;
12'd494:toneL=`d4;
12'd495:toneL=`sil;
12'd496:toneL=`d4;12'd497:toneL=`d4;
12'd498:toneL=`d4;12'd499:toneL=`d4;
12'd500:toneL=`d4;12'd501:toneL=`d4;
12'd502:toneL=`d4;
12'd503:toneL=`sil;
12'd504:toneL=`d4;12'd505:toneL=`d4;
12'd506:toneL=`d4;12'd507:toneL=`d4;
12'd508:toneL=`d4;12'd509:toneL=`d4;
12'd510:toneL=`d4;12'd511:toneL=`d4;

            default:
            toneL=`sil;
            endcase
        end
        if(en==`play_audio)begin
            case(ibeatNum)
            //1
                12'd0:toneL=`d5;12'd1:toneL=`d5;
12'd2:toneL=`d5;12'd3:toneL=`d5;
12'd4:toneL=`d5;12'd5:toneL=`d5;
12'd6:toneL=`d5;12'd7:toneL=`d5;
12'd8:toneL=`d5;12'd9:toneL=`d5;
12'd10:toneL=`d5;12'd11:toneL=`d5;
12'd12:toneL=`d5;12'd13:toneL=`d5;
12'd14:toneL=`d5;12'd15:toneL=`d5;
12'd16:toneL=`d5;12'd17:toneL=`d5;
12'd18:toneL=`d5;12'd19:toneL=`d5;
12'd20:toneL=`d5;12'd21:toneL=`d5;
12'd22:toneL=`d5;12'd23:toneL=`d5;
12'd24:toneL=`d5;12'd25:toneL=`d5;
12'd26:toneL=`d5;12'd27:toneL=`d5;
12'd28:toneL=`d5;12'd29:toneL=`d5;
12'd30:toneL=`d5;12'd31:toneL=`d5;

12'd32:toneL=`a4;12'd33:toneL=`a4;
12'd34:toneL=`a4;12'd35:toneL=`a4;
12'd36:toneL=`a4;12'd37:toneL=`a4;
12'd38:toneL=`a4;12'd39:toneL=`a4;
12'd40:toneL=`a4;12'd41:toneL=`a4;
12'd42:toneL=`a4;12'd43:toneL=`a4;
12'd44:toneL=`a4;12'd45:toneL=`a4;
12'd46:toneL=`a4;12'd47:toneL=`a4;
12'd48:toneL=`a4;12'd49:toneL=`a4;
12'd50:toneL=`a4;12'd51:toneL=`a4;
12'd52:toneL=`a4;12'd53:toneL=`a4;
12'd54:toneL=`a4;12'd55:toneL=`a4;
12'd56:toneL=`a4;12'd57:toneL=`a4;
12'd58:toneL=`a4;12'd59:toneL=`a4;
12'd60:toneL=`a4;12'd61:toneL=`a4;
12'd62:toneL=`a4;12'd63:toneL=`a4;

12'd64:toneL=`b4;12'd65:toneL=`b4;
12'd66:toneL=`b4;12'd67:toneL=`b4;
12'd68:toneL=`b4;12'd69:toneL=`b4;
12'd70:toneL=`b4;12'd71:toneL=`b4;
12'd72:toneL=`b4;12'd73:toneL=`b4;
12'd74:toneL=`b4;12'd75:toneL=`b4;
12'd76:toneL=`b4;12'd77:toneL=`b4;
12'd78:toneL=`b4;12'd79:toneL=`b4;
12'd80:toneL=`b4;12'd81:toneL=`b4;
12'd82:toneL=`b4;12'd83:toneL=`b4;
12'd84:toneL=`b4;12'd85:toneL=`b4;
12'd86:toneL=`b4;12'd87:toneL=`b4;
12'd88:toneL=`b4;12'd89:toneL=`b4;
12'd90:toneL=`b4;12'd91:toneL=`b4;
12'd92:toneL=`b4;12'd93:toneL=`b4;
12'd94:toneL=`b4;12'd95:toneL=`b4;

12'd96:toneL=`f4_;12'd97:toneL=`f4_;
12'd98:toneL=`f4_;12'd99:toneL=`f4_;
12'd100:toneL=`f4_;12'd101:toneL=`f4_;
12'd102:toneL=`f4_;12'd103:toneL=`f4_;
12'd104:toneL=`f4_;12'd105:toneL=`f4_;
12'd106:toneL=`f4_;12'd107:toneL=`f4_;
12'd108:toneL=`f4_;12'd109:toneL=`f4_;
12'd110:toneL=`f4_;12'd111:toneL=`f4_;
12'd112:toneL=`f4_;12'd113:toneL=`f4_;
12'd114:toneL=`f4_;12'd115:toneL=`f4_;
12'd116:toneL=`f4_;12'd117:toneL=`f4_;
12'd118:toneL=`f4_;12'd119:toneL=`f4_;
12'd120:toneL=`f4_;12'd121:toneL=`f4_;
12'd122:toneL=`f4_;12'd123:toneL=`f4_;
12'd124:toneL=`f4_;12'd125:toneL=`f4_;
12'd126:toneL=`f4_;12'd127:toneL=`f4_;

12'd128:toneL=`g4;12'd129:toneL=`g4;
12'd130:toneL=`g4;12'd131:toneL=`g4;
12'd132:toneL=`g4;12'd133:toneL=`g4;
12'd134:toneL=`g4;12'd135:toneL=`g4;
12'd136:toneL=`g4;12'd137:toneL=`g4;
12'd138:toneL=`g4;12'd139:toneL=`g4;
12'd140:toneL=`g4;12'd141:toneL=`g4;
12'd142:toneL=`g4;12'd143:toneL=`g4;
12'd144:toneL=`g4;12'd145:toneL=`g4;
12'd146:toneL=`g4;12'd147:toneL=`g4;
12'd148:toneL=`g4;12'd149:toneL=`g4;
12'd150:toneL=`g4;12'd151:toneL=`g4;
12'd152:toneL=`g4;12'd153:toneL=`g4;
12'd154:toneL=`g4;12'd155:toneL=`g4;
12'd156:toneL=`g4;12'd157:toneL=`g4;
12'd158:toneL=`g4;12'd159:toneL=`g4;

12'd160:toneL=`d4;12'd161:toneL=`d4;
12'd162:toneL=`d4;12'd163:toneL=`d4;
12'd164:toneL=`d4;12'd165:toneL=`d4;
12'd166:toneL=`d4;12'd167:toneL=`d4;
12'd168:toneL=`d4;12'd169:toneL=`d4;
12'd170:toneL=`d4;12'd171:toneL=`d4;
12'd172:toneL=`d4;12'd173:toneL=`d4;
12'd174:toneL=`d4;12'd175:toneL=`d4;
12'd176:toneL=`d4;12'd177:toneL=`d4;
12'd178:toneL=`d4;12'd179:toneL=`d4;
12'd180:toneL=`d4;12'd181:toneL=`d4;
12'd182:toneL=`d4;12'd183:toneL=`d4;
12'd184:toneL=`d4;12'd185:toneL=`d4;
12'd186:toneL=`d4;12'd187:toneL=`d4;
12'd188:toneL=`d4;12'd189:toneL=`d4;
12'd190:toneL=`d4;12'd191:toneL=`d4;

12'd192:toneL=`g4;12'd193:toneL=`g4;
12'd194:toneL=`g4;12'd195:toneL=`g4;
12'd196:toneL=`g4;12'd197:toneL=`g4;
12'd198:toneL=`g4;12'd199:toneL=`g4;
12'd200:toneL=`g4;12'd201:toneL=`g4;
12'd202:toneL=`g4;12'd203:toneL=`g4;
12'd204:toneL=`g4;12'd205:toneL=`g4;
12'd206:toneL=`g4;12'd207:toneL=`g4;
12'd208:toneL=`g4;12'd209:toneL=`g4;
12'd210:toneL=`g4;12'd211:toneL=`g4;
12'd212:toneL=`g4;12'd213:toneL=`g4;
12'd214:toneL=`g4;12'd215:toneL=`g4;
12'd216:toneL=`g4;12'd217:toneL=`g4;
12'd218:toneL=`g4;12'd219:toneL=`g4;
12'd220:toneL=`g4;12'd221:toneL=`g4;
12'd222:toneL=`g4;12'd223:toneL=`g4;

12'd224:toneL=`a4;12'd225:toneL=`a4;
12'd226:toneL=`a4;12'd227:toneL=`a4;
12'd228:toneL=`a4;12'd229:toneL=`a4;
12'd230:toneL=`a4;12'd231:toneL=`a4;
12'd232:toneL=`a4;12'd233:toneL=`a4;
12'd234:toneL=`a4;12'd235:toneL=`a4;
12'd236:toneL=`a4;12'd237:toneL=`a4;
12'd238:toneL=`a4;12'd239:toneL=`a4;
12'd240:toneL=`a4;12'd241:toneL=`a4;
12'd242:toneL=`a4;12'd243:toneL=`a4;
12'd244:toneL=`a4;12'd245:toneL=`a4;
12'd246:toneL=`a4;12'd247:toneL=`a4;
12'd248:toneL=`a4;12'd249:toneL=`a4;
12'd250:toneL=`a4;12'd251:toneL=`a4;
12'd252:toneL=`a4;12'd253:toneL=`a4;
12'd254:toneL=`a4;12'd255:toneL=`a4;

12'd256:toneL=`a5;12'd257:toneL=`a5;
12'd258:toneL=`a5;12'd259:toneL=`a5;
12'd260:toneL=`a5;12'd261:toneL=`a5;
12'd262:toneL=`a5;12'd263:toneL=`a5;

12'd264:toneL=`f5_;12'd265:toneL=`f5_;
12'd266:toneL=`f5_;12'd267:toneL=`f5_;

12'd268:toneL=`g5;12'd269:toneL=`g5;
12'd270:toneL=`g5;12'd271:toneL=`g5;

12'd272:toneL=`a5;12'd273:toneL=`a5;
12'd274:toneL=`a5;12'd275:toneL=`a5;
12'd276:toneL=`a5;12'd277:toneL=`a5;
12'd278:toneL=`a5;12'd279:toneL=`a5;

12'd280:toneL=`f5_;12'd281:toneL=`f5_;
12'd282:toneL=`f5_;12'd283:toneL=`f5_;

12'd284:toneL=`g5;12'd285:toneL=`g5;
12'd286:toneL=`g5;12'd287:toneL=`g5;

12'd288:toneL=`a5;12'd289:toneL=`a5;
12'd290:toneL=`a5;12'd291:toneL=`a5;

12'd292:toneL=`a4;12'd293:toneL=`a4;
12'd294:toneL=`a4;12'd295:toneL=`a4;

12'd296:toneL=`b4;12'd297:toneL=`b4;
12'd298:toneL=`b4;12'd299:toneL=`b4;

12'd300:toneL=`c5_;12'd301:toneL=`c5_;
12'd302:toneL=`c5_;12'd303:toneL=`c5_;

12'd304:toneL=`d5;12'd305:toneL=`d5;
12'd306:toneL=`d5;12'd307:toneL=`d5;

12'd308:toneL=`e5;12'd309:toneL=`e5;
12'd310:toneL=`e5;12'd311:toneL=`e5;

12'd312:toneL=`f5_;12'd313:toneL=`f5_;
12'd314:toneL=`f5_;12'd315:toneL=`f5_;

12'd316:toneL=`g5;12'd317:toneL=`g5;
12'd318:toneL=`g5;12'd319:toneL=`g5;

12'd320:toneL=`f5_;12'd321:toneL=`f5_;
12'd322:toneL=`f5_;12'd323:toneL=`f5_;
12'd324:toneL=`f5_;12'd325:toneL=`f5_;
12'd326:toneL=`f5_;12'd327:toneL=`f5_;

12'd328:toneL=`d5;12'd329:toneL=`d5;
12'd330:toneL=`d5;12'd331:toneL=`d5;

12'd332:toneL=`e5;12'd333:toneL=`e5;
12'd334:toneL=`e5;12'd335:toneL=`e5;

12'd336:toneL=`f5_;12'd337:toneL=`f5_;
12'd338:toneL=`f5_;12'd339:toneL=`f5_;
12'd340:toneL=`f5_;12'd341:toneL=`f5_;
12'd342:toneL=`f5_;12'd343:toneL=`f5_;

12'd344:toneL=`f4_;12'd345:toneL=`f4_;
12'd346:toneL=`f4_;12'd347:toneL=`f4_;

12'd348:toneL=`g4;12'd349:toneL=`g4;
12'd350:toneL=`g4;12'd351:toneL=`g4;

12'd352:toneL=`a4;12'd353:toneL=`a4;
12'd354:toneL=`a4;12'd355:toneL=`a4;

12'd356:toneL=`b4;12'd357:toneL=`b4;
12'd358:toneL=`b4;12'd359:toneL=`b4;

12'd360:toneL=`a4;12'd361:toneL=`a4;
12'd362:toneL=`a4;12'd363:toneL=`a4;

12'd364:toneL=`g4;12'd365:toneL=`g4;
12'd366:toneL=`g4;12'd367:toneL=`g4;

12'd368:toneL=`a4;12'd369:toneL=`a4;
12'd370:toneL=`a4;12'd371:toneL=`a4;

12'd372:toneL=`f4_;12'd373:toneL=`f4_;
12'd374:toneL=`f4_;12'd375:toneL=`f4_;

12'd376:toneL=`g4;12'd377:toneL=`g4;
12'd378:toneL=`g4;12'd379:toneL=`g4;

12'd380:toneL=`a4;12'd381:toneL=`a4;
12'd382:toneL=`a4;12'd383:toneL=`a4;

12'd384:toneL=`g4;12'd385:toneL=`g4;
12'd386:toneL=`g4;12'd387:toneL=`g4;
12'd388:toneL=`g4;12'd389:toneL=`g4;
12'd390:toneL=`g4;12'd391:toneL=`g4;

12'd392:toneL=`b4;12'd393:toneL=`b4;
12'd394:toneL=`b4;12'd395:toneL=`b4;

12'd396:toneL=`a4;12'd397:toneL=`a4;
12'd398:toneL=`a4;12'd399:toneL=`a4;

12'd400:toneL=`g4;12'd401:toneL=`g4;
12'd402:toneL=`g4;12'd403:toneL=`g4;
12'd404:toneL=`g4;12'd405:toneL=`g4;
12'd406:toneL=`g4;12'd407:toneL=`g4;

12'd408:toneL=`f4_;12'd409:toneL=`f4_;
12'd410:toneL=`f4_;12'd411:toneL=`f4_;

12'd412:toneL=`e4;12'd413:toneL=`e4;
12'd414:toneL=`e4;12'd415:toneL=`e4;

12'd416:toneL=`f4_;12'd417:toneL=`f4_;
12'd418:toneL=`f4_;12'd419:toneL=`f4_;

12'd420:toneL=`e4;12'd421:toneL=`e4;
12'd422:toneL=`e4;12'd423:toneL=`e4;

12'd424:toneL=`d4;12'd425:toneL=`d4;
12'd426:toneL=`d4;12'd427:toneL=`d4;

12'd428:toneL=`e4;12'd429:toneL=`e4;
12'd430:toneL=`e4;12'd431:toneL=`e4;

12'd432:toneL=`f4_;12'd433:toneL=`f4_;
12'd434:toneL=`f4_;12'd435:toneL=`f4_;

12'd436:toneL=`g4;12'd437:toneL=`g4;
12'd438:toneL=`g4;12'd439:toneL=`g4;

12'd440:toneL=`a4;12'd441:toneL=`a4;
12'd442:toneL=`a4;12'd443:toneL=`a4;

12'd444:toneL=`b4;12'd445:toneL=`b4;
12'd446:toneL=`b4;12'd447:toneL=`b4;

12'd448:toneL=`g4;12'd449:toneL=`g4;
12'd450:toneL=`g4;12'd451:toneL=`g4;
12'd452:toneL=`g4;12'd453:toneL=`g4;
12'd454:toneL=`g4;12'd455:toneL=`g4;

12'd456:toneL=`b4;12'd457:toneL=`b4;
12'd458:toneL=`b4;12'd459:toneL=`b4;

12'd460:toneL=`a4;12'd461:toneL=`a4;
12'd462:toneL=`a4;12'd463:toneL=`a4;

12'd464:toneL=`b4;12'd465:toneL=`b4;
12'd466:toneL=`b4;12'd467:toneL=`b4;
12'd468:toneL=`b4;12'd469:toneL=`b4;
12'd470:toneL=`b4;12'd471:toneL=`b4;

12'd472:toneL=`c5_;12'd473:toneL=`c5_;
12'd474:toneL=`c5_;12'd475:toneL=`c5_;

12'd476:toneL=`d5;12'd477:toneL=`d5;
12'd478:toneL=`d5;12'd479:toneL=`d5;

12'd480:toneL=`a4;12'd481:toneL=`a4;
12'd482:toneL=`a4;12'd483:toneL=`a4;

12'd484:toneL=`b4;12'd485:toneL=`b4;
12'd486:toneL=`b4;12'd487:toneL=`b4;

12'd488:toneL=`c5_;12'd489:toneL=`c5_;
12'd490:toneL=`c5_;12'd491:toneL=`c5_;

12'd492:toneL=`d5;12'd493:toneL=`d5;
12'd494:toneL=`d5;12'd495:toneL=`d5;

12'd496:toneL=`e5;12'd497:toneL=`e5;
12'd498:toneL=`e5;12'd499:toneL=`e5;

12'd500:toneL=`f5_;12'd501:toneL=`f5_;
12'd502:toneL=`f5_;12'd503:toneL=`f5_;

12'd504:toneL=`g5;12'd505:toneL=`g5;
12'd506:toneL=`g5;12'd507:toneL=`g5;

12'd508:toneL=`a5;12'd509:toneL=`a5;
12'd510:toneL=`a5;12'd511:toneL=`a5;

                default : toneL = `sil;
            endcase
        end
        else if(en==`win_audio)begin
            case(ibeatNum)
                                12'd0:toneL=`g3;12'd1:toneL=`g3;
12'd2:toneL=`g3;12'd3:toneL=`g3;
12'd4:toneL=`g3;
12'd5:toneL=`e3;12'd6:toneL=`e3;
12'd7:toneL=`e3;12'd8:toneL=`e3;
12'd9:toneL=`e3;12'd10:toneL=`e3;

12'd11:toneL=`g3;12'd12:toneL=`g3;
12'd13:toneL=`g3;12'd14:toneL=`g3;
12'd15:toneL=`g3;
12'd16:toneL=`c4;12'd17:toneL=`c4;
12'd18:toneL=`c4;12'd19:toneL=`c4;
12'd20:toneL=`c4;
12'd21:toneL=`e4;12'd22:toneL=`e4;
12'd23:toneL=`e4;12'd24:toneL=`e4;
12'd25:toneL=`e4;12'd26:toneL=`e4;

12'd27:toneL=`g4;12'd28:toneL=`g4;
12'd29:toneL=`g4;12'd30:toneL=`g4;
12'd31:toneL=`g4;
12'd32:toneL=`c5;12'd33:toneL=`c5;
12'd34:toneL=`c5;12'd35:toneL=`c5;
12'd36:toneL=`c5;12'd37:toneL=`c5;
12'd38:toneL=`c5;12'd39:toneL=`c5;
12'd40:toneL=`c5;12'd41:toneL=`c5;
12'd42:toneL=`c5;12'd43:toneL=`c5;
12'd44:toneL=`c5;12'd45:toneL=`c5;
12'd46:toneL=`c5;12'd47:toneL=`c5;

12'd48:toneL=`g4;12'd49:toneL=`g4;
12'd50:toneL=`g4;12'd51:toneL=`g4;
12'd52:toneL=`g4;12'd53:toneL=`g4;
12'd54:toneL=`g4;12'd55:toneL=`g4;
12'd56:toneL=`g4;12'd57:toneL=`g4;
12'd58:toneL=`g4;12'd59:toneL=`g4;
12'd60:toneL=`g4;12'd61:toneL=`g4;
12'd62:toneL=`g4;12'd63:toneL=`g4;

12'd64:toneL=`g3_;12'd65:toneL=`g3_;
12'd66:toneL=`g3_;12'd67:toneL=`g3_;
12'd68:toneL=`g3_;
12'd69:toneL=`f3_;12'd70:toneL=`f3_;
12'd71:toneL=`f3_;12'd72:toneL=`f3_;
12'd73:toneL=`f3_;12'd74:toneL=`f3_;

12'd75:toneL=`g3;12'd76:toneL=`g3;
12'd77:toneL=`g3;12'd78:toneL=`g3;
12'd79:toneL=`g3;
12'd80:toneL=`c4;12'd81:toneL=`c4;
12'd82:toneL=`c4;12'd83:toneL=`c4;
12'd84:toneL=`c4;
12'd85:toneL=`e4;12'd86:toneL=`e4;
12'd87:toneL=`e4;12'd88:toneL=`e4;
12'd89:toneL=`e4;12'd90:toneL=`e4;

12'd91:toneL=`g4;12'd92:toneL=`g4;
12'd93:toneL=`g4;12'd94:toneL=`g4;
12'd95:toneL=`g4;
12'd96:toneL=`c5;12'd97:toneL=`c5;
12'd98:toneL=`c5;12'd99:toneL=`c5;
12'd100:toneL=`c5;12'd101:toneL=`c5;
12'd102:toneL=`c5;12'd103:toneL=`c5;
12'd104:toneL=`c5;12'd105:toneL=`c5;
12'd106:toneL=`c5;12'd107:toneL=`c5;
12'd108:toneL=`c5;12'd109:toneL=`c5;
12'd110:toneL=`c5;12'd111:toneL=`c5;

12'd112:toneL=`g4;12'd113:toneL=`g4;
12'd114:toneL=`g4;12'd115:toneL=`g4;
12'd116:toneL=`g4;12'd117:toneL=`g4;
12'd118:toneL=`g4;12'd119:toneL=`g4;
12'd120:toneL=`g4;12'd121:toneL=`g4;
12'd122:toneL=`g4;12'd123:toneL=`g4;
12'd124:toneL=`g4;12'd125:toneL=`g4;
12'd126:toneL=`g4;12'd127:toneL=`g4;

12'd128:toneL=`a3_;12'd129:toneL=`a3_;
12'd130:toneL=`a3_;12'd131:toneL=`a3_;
12'd132:toneL=`a3_;
12'd133:toneL=`f3;12'd134:toneL=`f3;
12'd135:toneL=`f3;12'd136:toneL=`f3;
12'd137:toneL=`f3;12'd138:toneL=`f3;

12'd139:toneL=`b3;12'd140:toneL=`b3;
12'd141:toneL=`b3;12'd142:toneL=`b3;
12'd143:toneL=`b3;
12'd144:toneL=`d4;12'd145:toneL=`d4;
12'd146:toneL=`d4;12'd147:toneL=`d4;
12'd148:toneL=`d4;
12'd149:toneL=`f4;12'd150:toneL=`f4;
12'd151:toneL=`f4;12'd152:toneL=`f4;
12'd153:toneL=`f4;12'd154:toneL=`f4;

12'd155:toneL=`b4;12'd156:toneL=`b4;
12'd157:toneL=`b4;12'd158:toneL=`b4;
12'd159:toneL=`b4;
12'd160:toneL=`d5;12'd161:toneL=`d5;
12'd162:toneL=`d5;12'd163:toneL=`d5;
12'd164:toneL=`d5;12'd165:toneL=`d5;
12'd166:toneL=`d5;12'd167:toneL=`d5;
12'd168:toneL=`d5;12'd169:toneL=`d5;
12'd170:toneL=`d5;12'd171:toneL=`d5;
12'd172:toneL=`d5;12'd173:toneL=`d5;
12'd174:toneL=`d5;
12'd175:toneL=`sil;
12'd176:toneL=`d5;12'd177:toneL=`d5;
12'd178:toneL=`d5;12'd179:toneL=`d5;
12'd180:toneL=`d5;
12'd181:toneL=`sil;
12'd182:toneL=`d5;12'd183:toneL=`d5;
12'd184:toneL=`d5;12'd185:toneL=`d5;
12'd186:toneL=`d5;
12'd187:toneL=`sil;
12'd188:toneL=`d5;12'd189:toneL=`d5;
12'd190:toneL=`d5;12'd191:toneL=`d5;

12'd192:toneL=`e5;12'd193:toneL=`e5;
12'd194:toneL=`e5;12'd195:toneL=`e5;
12'd196:toneL=`e5;12'd197:toneL=`e5;
12'd198:toneL=`e5;12'd199:toneL=`e5;
12'd200:toneL=`e5;12'd201:toneL=`e5;
12'd202:toneL=`e5;12'd203:toneL=`e5;
12'd204:toneL=`e5;12'd205:toneL=`e5;
12'd206:toneL=`e5;12'd207:toneL=`e5;
12'd208:toneL=`e5;12'd209:toneL=`e5;
12'd210:toneL=`e5;12'd211:toneL=`e5;
12'd212:toneL=`e5;12'd213:toneL=`e5;
12'd214:toneL=`e5;12'd215:toneL=`e5;
12'd216:toneL=`e5;12'd217:toneL=`e5;
12'd218:toneL=`e5;12'd219:toneL=`e5;
12'd220:toneL=`e5;12'd221:toneL=`e5;
12'd222:toneL=`e5;12'd223:toneL=`e5;
12'd224:toneL=`e5;12'd225:toneL=`e5;
12'd226:toneL=`e5;12'd227:toneL=`e5;
12'd228:toneL=`e5;12'd229:toneL=`e5;
12'd230:toneL=`e5;12'd231:toneL=`e5;
12'd232:toneL=`e5;12'd233:toneL=`e5;
12'd234:toneL=`e5;12'd235:toneL=`e5;
12'd236:toneL=`e5;12'd237:toneL=`e5;
12'd238:toneL=`e5;12'd239:toneL=`e5;
12'd240:toneL=`e5;12'd241:toneL=`e5;
12'd242:toneL=`e5;12'd243:toneL=`e5;
12'd244:toneL=`e5;12'd245:toneL=`e5;
12'd246:toneL=`e5;12'd247:toneL=`e5;
12'd248:toneL=`e5;12'd249:toneL=`e5;
12'd250:toneL=`e5;12'd251:toneL=`e5;
12'd252:toneL=`e5;12'd253:toneL=`e5;
12'd254:toneL=`e5;12'd255:toneL=`e5;

 default : toneL = `sil;
            endcase
        end
        else if(en==`loss_audio) begin
            case(ibeatNum)
            12'd0:toneL=`e4;12'd1:toneL=`e4;
12'd2:toneL=`e4;12'd3:toneL=`e4;

12'd4:toneL=`sil;12'd5:toneL=`sil;
12'd6:toneL=`sil;12'd7:toneL=`sil;

12'd8:toneL=`sil;12'd9:toneL=`sil;
12'd10:toneL=`sil;12'd11:toneL=`sil;

12'd12:toneL=`c4;12'd13:toneL=`c4;
12'd14:toneL=`c4;12'd15:toneL=`c4;

12'd16:toneL=`sil;12'd17:toneL=`sil;
12'd18:toneL=`sil;12'd19:toneL=`sil;
12'd20:toneL=`sil;12'd21:toneL=`sil;
12'd22:toneL=`sil;12'd23:toneL=`sil;

12'd24:toneL=`g3;12'd25:toneL=`g3;
12'd26:toneL=`g3;12'd27:toneL=`g3;

12'd28:toneL=`sil;12'd29:toneL=`sil;
12'd30:toneL=`sil;12'd31:toneL=`sil;

12'd32:toneL=`f4;12'd33:toneL=`f4;
12'd34:toneL=`f4;12'd35:toneL=`f4;
12'd36:toneL=`f4;
12'd37:toneL=`b4;12'd38:toneL=`b4;
12'd39:toneL=`b4;12'd40:toneL=`b4;
12'd41:toneL=`b4;12'd42:toneL=`b4;

12'd43:toneL=`a4;12'd44:toneL=`a4;
12'd45:toneL=`a4;12'd46:toneL=`a4;
12'd47:toneL=`a4;
12'd48:toneL=`f4_;12'd49:toneL=`f4_;
12'd50:toneL=`f4_;12'd51:toneL=`f4_;
12'd52:toneL=`f4_;
12'd53:toneL=`a4_;12'd54:toneL=`a4_;
12'd55:toneL=`a4_;12'd56:toneL=`a4_;
12'd57:toneL=`a4_;12'd58:toneL=`a4_;

12'd59:toneL=`g4;12'd60:toneL=`g4;
12'd61:toneL=`g4;12'd62:toneL=`g4;
12'd63:toneL=`g4;
12'd64:toneL=`e4;12'd65:toneL=`e4;
12'd66:toneL=`e4;12'd67:toneL=`e4;
12'd68:toneL=`e4;12'd69:toneL=`e4;
12'd70:toneL=`e4;12'd71:toneL=`e4;

12'd72:toneL=`d4;12'd73:toneL=`d4;
12'd74:toneL=`d4;12'd75:toneL=`d4;
12'd76:toneL=`d4;12'd77:toneL=`d4;
12'd78:toneL=`d4;12'd79:toneL=`d4;

12'd80:toneL=`e4;12'd81:toneL=`e4;
12'd82:toneL=`e4;12'd83:toneL=`e4;
12'd84:toneL=`e4;12'd85:toneL=`e4;
12'd86:toneL=`e4;12'd87:toneL=`e4;
12'd88:toneL=`e4;12'd89:toneL=`e4;
12'd90:toneL=`e4;12'd91:toneL=`e4;
12'd92:toneL=`e4;12'd93:toneL=`e4;
12'd94:toneL=`e4;12'd95:toneL=`e4;
12'd96:toneL=`e4;12'd97:toneL=`e4;
12'd98:toneL=`e4;12'd99:toneL=`e4;
12'd100:toneL=`e4;12'd101:toneL=`e4;
12'd102:toneL=`e4;12'd103:toneL=`e4;
12'd104:toneL=`e4;12'd105:toneL=`e4;
12'd106:toneL=`e4;12'd107:toneL=`e4;
12'd108:toneL=`e4;12'd109:toneL=`e4;
12'd110:toneL=`e4;12'd111:toneL=`e4;
12'd112:toneL=`e4;12'd113:toneL=`e4;
12'd114:toneL=`e4;12'd115:toneL=`e4;
12'd116:toneL=`e4;12'd117:toneL=`e4;
12'd118:toneL=`e4;12'd119:toneL=`e4;
12'd120:toneL=`e4;12'd121:toneL=`e4;
12'd122:toneL=`e4;12'd123:toneL=`e4;
12'd124:toneL=`e4;12'd125:toneL=`e4;
12'd126:toneL=`e4;12'd127:toneL=`e4;


            default : toneL = `sil;
            endcase
        end
        else begin
            toneL=`sil;
        end
    end
endmodule
module player_control (
	input clk,
	input reset,
	input _play,
	input _repeat,
	input [2:0]_music,
	output reg [11:0] ibeat,
	output pause
);
	parameter LEN = 4095;
    reg [11:0] next_ibeat;
    reg [2:0]music_reg;
	always @(posedge clk, posedge reset) begin
		if (reset)begin
			ibeat <= 0;
			music_reg <= _music;
		end
		else begin
            ibeat <= (_music!=music_reg)?0:(_play==1)?next_ibeat:ibeat;
            music_reg <= _music;
		end
	end

    always @* begin
        next_ibeat = (ibeat + 1 < LEN) ?(ibeat + 1) :(ibeat+1==LEN&&(_repeat==0))?ibeat:12'd0;
    end
    assign pause=(ibeat+1==LEN&&(_repeat==0))?1:0;
endmodule
module speaker_control(
    clk,  // clock from the crystal
    rst,  // active high reset
    audio_in_left, // left channel audio data input
    audio_in_right, // right channel audio data input
    audio_mclk, // master clock
    audio_lrck, // left-right clock, Word Select clock, or sample rate clock
    audio_sck, // serial clock
    audio_sdin // serial audio data input
);

    // I/O declaration
    input clk;  // clock from the crystal
    input rst;  // active high reset
    input [15:0] audio_in_left; // left channel audio data input
    input [15:0] audio_in_right; // right channel audio data input
    output audio_mclk; // master clock
    output audio_lrck; // left-right clock
    output audio_sck; // serial clock
    output audio_sdin; // serial audio data input
    reg audio_sdin;

    // Declare internal signal nodes
    wire [8:0] clk_cnt_next;
    reg [8:0] clk_cnt;
    reg [15:0] audio_left, audio_right;

    // Counter for the clock divider
    assign clk_cnt_next = clk_cnt + 1'b1;

    always @(posedge clk or posedge rst)
        if (rst == 1'b1)
            clk_cnt <= 9'd0;
        else
            clk_cnt <= clk_cnt_next;

    // Assign divided clock output
    assign audio_mclk = clk_cnt[1];
    assign audio_lrck = clk_cnt[8];
    assign audio_sck = 1'b1; // use internal serial clock mode

    // audio input data buffer
    always @(posedge clk_cnt[8] or posedge rst)
        if (rst == 1'b1)
            begin
                audio_left <= 16'd0;
                audio_right <= 16'd0;
            end
        else
            begin
                audio_left <= audio_in_left;
                audio_right <= audio_in_right;
            end

    always @*
        case (clk_cnt[8:4])
            5'b00000: audio_sdin = audio_right[0];
            5'b00001: audio_sdin = audio_left[15];
            5'b00010: audio_sdin = audio_left[14];
            5'b00011: audio_sdin = audio_left[13];
            5'b00100: audio_sdin = audio_left[12];
            5'b00101: audio_sdin = audio_left[11];
            5'b00110: audio_sdin = audio_left[10];
            5'b00111: audio_sdin = audio_left[9];
            5'b01000: audio_sdin = audio_left[8];
            5'b01001: audio_sdin = audio_left[7];
            5'b01010: audio_sdin = audio_left[6];
            5'b01011: audio_sdin = audio_left[5];
            5'b01100: audio_sdin = audio_left[4];
            5'b01101: audio_sdin = audio_left[3];
            5'b01110: audio_sdin = audio_left[2];
            5'b01111: audio_sdin = audio_left[1];
            5'b10000: audio_sdin = audio_left[0];
            5'b10001: audio_sdin = audio_right[15];
            5'b10010: audio_sdin = audio_right[14];
            5'b10011: audio_sdin = audio_right[13];
            5'b10100: audio_sdin = audio_right[12];
            5'b10101: audio_sdin = audio_right[11];
            5'b10110: audio_sdin = audio_right[10];
            5'b10111: audio_sdin = audio_right[9];
            5'b11000: audio_sdin = audio_right[8];
            5'b11001: audio_sdin = audio_right[7];
            5'b11010: audio_sdin = audio_right[6];
            5'b11011: audio_sdin = audio_right[5];
            5'b11100: audio_sdin = audio_right[4];
            5'b11101: audio_sdin = audio_right[3];
            5'b11110: audio_sdin = audio_right[2];
            5'b11111: audio_sdin = audio_right[1];
            default: audio_sdin = 1'b0;
        endcase

endmodule
module note_gen(
    clk, // clock from crystal
    rst, // active high reset
    note_div_left, // div for note generation
    note_div_right,
    audio_left,
    audio_right
);

    // I/O declaration
    input clk; // clock from crystal
    input rst; // active low reset
    input [21:0] note_div_left, note_div_right; // div for note generation
    output [15:0] audio_left, audio_right;

    // Declare internal signals
    reg [21:0] clk_cnt_next, clk_cnt;
    reg [21:0] clk_cnt_next_2, clk_cnt_2;
    reg b_clk, b_clk_next;
    reg c_clk, c_clk_next;

    wire [15:0]vol_change;
    // Note frequency generation
    always @(posedge clk or posedge rst)
        if (rst == 1'b1)
            begin
                clk_cnt <= 22'd0;
                clk_cnt_2 <= 22'd0;
                b_clk <= 1'b0;
                c_clk <= 1'b0;
            end
        else
            begin
                clk_cnt <= clk_cnt_next;
                clk_cnt_2 <= clk_cnt_next_2;
                b_clk <= b_clk_next;
                c_clk <= c_clk_next;
            end

    always @*
        if (clk_cnt == note_div_left)
            begin
                clk_cnt_next = 22'd0;
                b_clk_next = ~b_clk;
            end
        else
            begin
                clk_cnt_next = clk_cnt + 1'b1;
                b_clk_next = b_clk;
            end

    always @*
        if (clk_cnt_2 == note_div_right)
            begin
                clk_cnt_next_2 = 22'd0;
                c_clk_next = ~c_clk;
            end
        else
            begin
                clk_cnt_next_2 = clk_cnt_2 + 1'b1;
                c_clk_next = c_clk;
            end

    //assign vol_change = (volume==1)?16'b0011_0000_0000_0000:(volume==2)?16'b0100_0000_0000_0000:(volume==3)?16'b0101_0000_0000_0000:(volume==4)?16'b0110_0000_0000_0000:16'b0111_0000_0000_0000;
    assign vol_change = 16'b0011_0000_0000_0000;
    // Assign the amplitude of the note
    // Volume is controlled here
    assign audio_left = (note_div_left == 22'd1) ? 16'h0000 : (b_clk == 1'b0) ? vol_change : 16'h2000;
    assign audio_right = (note_div_right == 22'd1) ? 16'h0000 : (c_clk == 1'b0) ? vol_change : 16'h2000;
endmodule

module music(
    clk, // clock from crystal
    rst, // active high reset: BTNC
    state,
    audio_mclk, // master clock
    audio_lrck, // left-right clock
    audio_sck, // serial clock
    audio_sdin, // serial audio data input
    ibeatNum
);

    // I/O declaration
    input clk;  // clock from the crystal
    input rst;  // active high reset
    input [2:0]state;
    output audio_mclk; // master clock
    output audio_lrck; // left-right clock
    output audio_sck; // serial clock
    output audio_sdin; // serial audio data input
    output [11:0] ibeatNum; // Beat counter

    wire _play;
    assign _play = 1;
    wire _mute;
    assign _mute = 0;
    wire _repeat;
    assign _repeat = (state==`play_audio)?1:0;
    // Internal Signal
    wire [15:0] audio_in_left, audio_in_right;
    wire  _music = (state==`play_audio)?0:1;
    wire clkDiv22, clk13;
    
    wire [31:0] freqL, freqR; // Raw frequency, produced by music module
    wire [21:0] freq_outL, freq_outR; // Processed Frequency, adapted to the clock rate of Basys3

    wire pause;
    assign freq_outL = 50000000 / ((_mute||!(_play)||pause) ? `silence : freqL); // Note gen makes no sound, if freq_out = 50000000 / `silence = 1
    assign freq_outR = 50000000 / ((_mute||!(_play)||pause) ? `silence : freqR);

    clock_divider #(.n(22)) clock_22(
        .clk(clk),
        .clk_div(clkDiv22)
    );
    clock_divider #(.n(13)) clock_13(
        .clk(clk),
        .clk_div(clk13)
    );

    // Player Control
    player_control #(.LEN(512)) playerCtrl_00 (
        .clk(clkDiv22),
        .reset(rst),
        ._play(_play),
        ._repeat(_repeat),
        ._music(state),
        .ibeat(ibeatNum),
        .pause(pause)
    );



    // Music module
    // [in]  beat number and en
    // [out] left & right raw frequency
    music_example music_00 (
        .ibeatNum(ibeatNum),
        .en(state),
        ._play(_play),
        .pause(pause),
        .toneL(freqL),
        .toneR(freqR)
    );

    // Note generation
    // [in]  processed frequency
    // [out] audio wave signal (using square wave here)
    note_gen noteGen_00(
        .clk(clk), // clock from crystal
        .rst(rst), // active high reset
        .note_div_left(freq_outL),
        .note_div_right(freq_outR),
        .audio_left(audio_in_left), // left sound audio
        .audio_right(audio_in_right)
    );


    // Speaker controller
    speaker_control sc(
        .clk(clk),  // clock from the crystal
        .rst(rst),  // active high reset
        .audio_in_left(audio_in_left), // left channel audio data input
        .audio_in_right(audio_in_right), // right channel audio data input
        .audio_mclk(audio_mclk), // master clock
        .audio_lrck(audio_lrck), // left-right clock
        .audio_sck(audio_sck), // serial clock
        .audio_sdin(audio_sdin) // serial audio data input
    );

endmodule
