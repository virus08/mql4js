//+------------------------------------------------------------------+਀⼀⼀簀                                                    䔀愀吀攀洀瀀氀愀琀攀⸀洀焀㐀簀 
//|                                          Jacek Dzambuіat-Colojew |਀⼀⼀簀                                                樀愀挀攀欀搀挀䀀最洀愀椀氀⸀挀漀洀 簀 
//+------------------------------------------------------------------+਀ 
#property copyright "Jacek Dzambuіat-Colojew"਀⌀瀀爀漀瀀攀爀琀礀 氀椀渀欀      ∀樀愀挀攀欀搀挀䀀最洀愀椀氀⸀挀漀洀∀ 
#property version   "1.00"਀ 
input double Lot = 0.1;਀椀渀瀀甀琀 戀漀漀氀 䄀甀琀漀䰀漀琀猀 㴀 䘀愀氀猀攀㬀 ⼀⼀ 椀昀 椀琀猀 吀爀甀攀 椀琀 眀椀氀氀 愀甀琀漀洀愀琀椀挀愀氀氀礀 挀愀氀挀甀氀愀琀攀 䰀漀琀 戀愀猀攀搀 漀渀 䄀挀挀漀渀琀 䈀愀氀愀渀挀攀⸀ 䜀漀 搀漀眀渀 琀漀 漀瀀攀渀⠀⤀ 昀甀渀挀琀椀漀渀 琀漀 猀攀攀 栀漀眀 搀漀攀猀 椀琀 眀漀爀欀⸀ 
input int TakeProfit = 1000;਀椀渀瀀甀琀 椀渀琀 匀琀漀瀀䰀漀猀猀 㴀 㔀　　㬀 
input int TrailingStart = 200; // 200 mean tralingstop will start to work above 200 pips਀椀渀瀀甀琀 椀渀琀 吀爀愀椀氀椀渀最匀琀漀瀀 㴀 ㄀㔀　㬀 ⼀⼀ ㄀㔀　 洀攀愀渀 椀琀 眀椀氀氀 洀漀瘀攀 ㄀㔀　 瀀椀瀀猀 愀戀漀瘀攀 挀甀爀爀攀渀琀 漀爀搀攀爀 瀀爀椀挀攀 
input int Ba = 100; // BA at 100 mean, that order stop loss will be moved at open price + spread to make order safe.਀椀渀瀀甀琀 椀渀琀 匀氀椀瀀瀀愀最攀 㴀 ㌀㬀 
input int MaxOrders = 1; // How many orders script can open on current symbol਀椀渀瀀甀琀 椀渀琀 䴀愀最椀挀 㴀 㘀㘀㘀㬀 ⼀⼀ 䴀愀最椀挀 渀甀洀戀攀爀 
input int Pips = 10; // How far ( in pips ) from actual price sellstop / buystop order will be placed.਀椀渀瀀甀琀 椀渀琀 䴀椀渀猀 㴀 ㌀　㬀 ⼀⼀ 䰀椀昀攀琀椀洀攀 漀昀 戀甀礀猀琀漀瀀 ⼀ 猀攀氀氀猀琀漀瀀 漀爀搀攀爀 ⠀ 椀渀 洀椀渀甀琀攀猀 ⤀ 愀昀琀攀爀 椀琀 椀猀 搀攀氀攀琀攀搀 椀昀 渀漀琀 爀攀愀挀栀攀搀 漀瀀攀渀 瀀爀椀挀攀⸀  
input int PERIOD = 15; // 15 mean it will work on M15, for exampe PERIOD = 240 mean it will work on H4਀椀渀瀀甀琀 椀渀琀 䌀愀渀搀氀攀猀 㴀 㠀㬀 ⼀⼀ 一甀洀戀攀爀 漀昀 挀愀渀搀氀攀猀 猀挀愀渀渀攀搀 椀渀 匀挀愀渀⠀⤀ 昀甀渀挀琀椀漀渀Ⰰ 眀栀椀挀栀 猀栀漀眀猀 琀栀攀 栀椀最栀攀猀 愀渀搀 琀栀攀 氀漀眀攀猀琀 漀爀搀攀爀 瀀爀椀挀攀 椀渀 琀栀攀 瀀愀猀琀⸀ 
input int shift = 1; // Shift = 1 mean it will start to scan from previous candle.਀椀渀瀀甀琀 椀渀琀 䴀愀砀匀瀀爀攀愀搀 㴀 ㈀　㬀 ⼀⼀ 䤀昀 猀瀀爀攀愀搀 椀猀 愀戀漀瘀攀 ㈀　Ⰰ 漀爀搀攀爀猀 眀椀氀氀 渀漀琀 戀攀 漀瀀攀渀攀搀 
਀椀渀琀 吀椀挀欀攀琀Ⰰ 䰀愀猀琀伀爀搀攀爀 㴀 ㈀㬀 ⼀⼀ 䰀愀猀琀伀爀搀攀爀 㴀 ㈀ 洀攀愀渀 猀挀爀椀瀀琀 挀愀渀 洀愀欀攀 猀攀氀氀 愀渀搀 戀甀礀 漀爀搀攀爀猀⸀ 　 洀攀愀渀 椀琀 挀愀渀 漀渀氀礀 戀甀礀⸀ ㄀ 洀攀愀渀 椀琀 挀愀渀 漀渀氀礀 猀攀氀氀⸀ 
double lows, highs, low, high, range; // To learn how does LastOrder works look down in open() script.਀⼀⼀ 氀漀眀Ⰰ 栀椀最栀 愀渀搀 爀愀渀最攀 愀爀攀 甀猀攀搀 椀渀 匀挀愀渀 䰀漀漀瀀 眀栀椀挀栀 挀愀氀挀甀氀愀琀攀 琀栀攀 栀椀最栀攀猀琀 愀渀搀 琀栀攀 氀漀眀攀猀琀 伀爀搀攀爀 倀爀椀挀攀 椀渀 琀栀攀 瀀愀猀琀⸀ 刀愀渀最攀 猀栀漀眀 栀漀眀 洀愀渀礀 瀀椀瀀猀 愀爀攀 戀攀攀琀眀攀渀 栀椀最栀 愀渀搀 氀漀眀 瘀愀氀甀攀 
਀椀渀琀 猀琀愀爀琀⠀⤀ 笀 ⼀⼀ 䔀砀攀挀甀琀攀搀 眀栀攀渀 琀栀攀爀攀 椀猀 渀攀眀 琀椀挀欀⸀ 
਀   椀渀琀 洀 㴀 　㬀 ⼀⼀ 洀 椀猀 愀 渀甀洀戀攀爀 漀昀 漀瀀攀渀攀搀 漀爀搀攀爀猀 漀渀 挀甀爀爀攀渀琀 猀礀洀戀漀氀⸀ 
਀   昀漀爀 ⠀ 椀渀琀 渀 㴀 　㬀 渀 㰀 伀爀搀攀爀猀吀漀琀愀氀⠀⤀㬀 渀⬀⬀ ⤀ 笀  ⼀⼀ 吀栀愀琀 氀漀漀瀀 猀攀愀爀挀栀 椀昀 琀栀攀爀攀 椀猀 漀瀀攀渀攀搀 漀爀搀攀爀 漀渀 挀甀爀爀攀渀琀 猀礀洀戀漀氀⸀ 
਀      椀昀 ⠀ 伀爀搀攀爀匀攀氀攀挀琀 ⠀ 渀Ⰰ 匀䔀䰀䔀䌀吀开䈀夀开倀伀匀 ⤀ ⤀ 笀   
਀         椀昀 ⠀ 伀爀搀攀爀匀礀洀戀漀氀⠀⤀ 㴀㴀 匀礀洀戀漀氀⠀⤀ ⤀ 笀   
         ਀            椀昀 ⠀ 伀爀搀攀爀䴀愀最椀挀一甀洀戀攀爀⠀⤀ 㴀㴀 䴀愀最椀挀 ⤀ 笀   
   ਀               吀椀挀欀攀琀 㴀 伀爀搀攀爀吀椀挀欀攀琀⠀⤀㬀   
               if ( OrderSelect ( Ticket, SELECT_BY_TICKET ) == True ) { close(); } // If it found opened order, script jump to close() function which close orders and make trailing stops.਀               洀⬀⬀㬀 
               ਀            紀 
਀         紀 
਀      紀 
਀   紀 
  ਀   椀昀 ⠀ 洀 㴀㴀 　 ⤀ 笀 䰀愀猀琀伀爀搀攀爀 㴀 ㈀㬀 紀 ⼀⼀ 䤀昀 琀栀攀爀攀 愀爀攀 渀漀 漀爀搀攀爀猀 猀挀爀椀瀀琀 䰀愀猀琀伀爀搀攀爀 㴀 ㈀ 眀栀椀挀栀 愀氀氀漀眀 猀挀爀椀瀀琀 琀漀 猀攀氀氀 愀渀搀 戀甀礀 
   if ( m < MaxOrders ) { open(); } // If MaxOrders are not reached it allow script to open one more order in order() function.਀   
return ( 0 );਀紀 
// time is a number of candles which are scanned਀⼀⼀ 瀀攀爀椀漀搀 椀猀 愀 琀椀洀攀 漀昀 ㄀ 挀愀渀搀氀攀⸀ 䘀漀爀 攀砀⸀ 椀昀 瀀攀爀椀漀搀 㴀 ㄀㔀 椀琀 眀椀氀氀 眀漀爀欀 漀渀 䴀㄀㔀 挀愀渀搀氀攀猀⸀ 
// shifte = 1 mean it will start to scan from previous candle.਀椀渀琀 匀挀愀渀 ⠀ 椀渀琀 琀椀洀攀Ⰰ 椀渀琀 瀀攀爀椀漀搀Ⰰ 椀渀琀 猀栀椀昀琀攀 ⤀ 笀 ⼀⼀ 吀栀愀琀 氀漀漀瀀 挀愀氀挀甀氀愀琀攀 琀栀攀 栀椀最栀攀猀琀 愀渀搀 琀栀攀 氀漀眀攀猀琀 漀爀搀攀爀 瀀爀椀挀攀 眀椀琀栀 爀愀渀最攀Ⰰ 眀栀椀挀栀 猀栀漀眀 栀漀眀 洀愀渀礀 瀀椀瀀猀 愀爀攀 戀攀攀琀眀攀渀 栀椀最栀 愀渀搀 氀漀眀 瘀愀氀甀攀 
   for ( int n = shifte; n < time; n++ ) {    ਀   
      lows = iLow(NULL, period, n);਀      栀椀最栀猀 㴀 椀䠀椀最栀⠀一唀䰀䰀Ⰰ 瀀攀爀椀漀搀Ⰰ 渀⤀㬀 
  ਀      椀昀 ⠀ 渀 㴀㴀 猀栀椀昀琀攀 ⤀ 笀 
      ਀         氀漀眀 㴀 氀漀眀猀㬀 
         high = highs;    ਀         
      } else {਀       
         if ( low >= lows ) { low = lows; }਀         椀昀 ⠀ 栀椀最栀 㰀㴀 栀椀最栀猀 ⤀ 笀 栀椀最栀 㴀 栀椀最栀猀㬀 紀 
      ਀      紀   
   }਀   
   range = high - low;਀   
return ( 0 );਀紀 
਀椀渀琀 漀瀀攀渀⠀⤀ 笀   
਀   搀漀甀戀氀攀 䰀漀琀猀㬀 
਀   匀挀愀渀 ⠀ 䌀愀渀搀氀攀猀Ⰰ 倀䔀刀䤀伀䐀Ⰰ 猀栀椀昀琀 ⤀㬀 ⼀⼀ 䠀攀爀攀 椀猀 攀砀愀洀瀀氀攀 栀漀眀 琀漀 昀椀渀搀 琀栀攀 氀漀眀攀猀琀Ⰰ 琀栀攀 栀椀最栀攀猀琀 瘀愀氀甀攀 愀渀搀 爀愀渀最攀 椀渀 琀栀攀 瀀愀猀琀⸀ 
   double BackHigh = high;਀   搀漀甀戀氀攀 䈀愀挀欀䰀漀眀 㴀 氀漀眀㬀 
   double BackRange = range;਀   
   if ( AutoLots == False ) { Lots = Lot; }਀   攀氀猀攀 笀 䰀漀琀猀 㴀 䴀愀琀栀刀漀甀渀搀 ⠀ 䄀挀挀漀甀渀琀䈀愀氀愀渀挀攀⠀⤀ ⼀ ㄀　　 ⤀ ⼀ ㄀　　㬀 紀 ⼀⼀ 䘀椀爀猀琀 ㄀　　 猀愀礀Ⰰ 琀栀愀琀 攀瘀攀爀礀 ㄀　　␀ 眀椀氀氀 眀椀氀氀 椀渀挀爀攀愀猀攀 氀漀琀 戀礀 ㄀ 瀀漀椀渀琀⸀ 
                                                               // Second 100 say, that 1 point is equal to 0.01 lot਀   ⼀⼀ 䠀攀爀攀 礀漀甀 挀愀渀 瀀氀愀挀攀 椀渀搀椀挀愀琀漀爀猀 愀渀搀 愀氀氀 猀琀甀昀昀              ⼀⼀ 䘀漀爀 攀砀⸀ 椀昀 礀漀甀 眀愀渀琀 琀漀 瀀氀愀礀 　⸀㔀 䰀漀琀 眀椀琀栀 ㄀　　　␀ 愀挀挀漀甀渀琀 礀漀甀 挀愀渀 眀爀椀琀攀 䴀愀琀栀刀漀甀渀搀 ⠀ 䄀挀挀漀甀渀琀䈀愀氀愀渀挀攀⠀⤀ ⼀ ㈀　 ⤀ ⼀ ㄀　　㬀 
   // Which will calculate when script should buy or sell.਀   
   RefreshRates();  // RefreshRate() update Bid and Ask value.਀   
   if ( ( Ask - Bid ) / Point < MaxSpread ) { // Checking, if spread is less than MaxSpread from inputs. If its Bigger, orders wont open਀   
      // Replace 1 == 0 to your conditions to buy order.਀      椀昀 ⠀ ㄀ 㴀㴀 　 ☀☀ 䰀愀猀琀伀爀搀攀爀 ℀㴀 ㄀ ⤀ 笀 ⼀⼀ 䰀愀猀琀伀爀搀攀爀℀㴀 ㄀ 瀀爀攀瘀攀渀琀 猀挀爀椀瀀琀 昀爀漀洀 洀愀欀椀渀最 愀 氀漀琀 漀昀 猀愀洀攀 戀甀礀 漀爀搀攀爀猀 
         Ticket = OrderSend ( Symbol(), OP_BUY, Lots, Ask, Slippage, Ask - ( StopLoss * Point ), Ask + ( TakeProfit * Point ), NULL, 0, 0, Green);਀         䰀愀猀琀伀爀搀攀爀 㴀 ㄀㬀 ⼀⼀ 䤀琀 瀀爀攀瘀攀渀琀 猀挀爀椀瀀琀 昀爀漀洀 洀愀欀椀渀最 愀 氀漀琀 漀昀 猀愀洀攀 戀甀礀 漀爀搀攀爀猀 
      }਀    
      // Replace 1 == 0 to your conditions to buystop order.਀      椀昀 ⠀ ㄀ 㴀㴀 　 ☀☀ 䰀愀猀琀伀爀搀攀爀 ℀㴀 ㄀ ⤀ 笀  ⼀⼀ 䰀愀猀琀伀爀搀攀爀℀㴀 ㄀ 瀀爀攀瘀攀渀琀 猀挀爀椀瀀琀 昀爀漀洀 洀愀欀椀渀最 愀 氀漀琀 漀昀 猀愀洀攀 戀甀礀猀琀漀瀀 漀爀搀攀爀猀 
         Ticket = OrderSend ( Symbol(), OP_BUYSTOP, Lots, Ask + ( Pips * Point ), Slippage, Ask + ( Pips * Point ) - ( StopLoss * Point ), Ask - ( Pips * Point ) + ( TakeProfit * Point ), NULL, Magic, TimeCurrent() + ( 60 * Mins ), Green);਀         䰀愀猀琀伀爀搀攀爀 㴀 ㄀㬀 ⼀⼀ 䤀琀 瀀爀攀瘀攀渀琀 猀挀爀椀瀀琀 昀爀漀洀 洀愀欀椀渀最 愀 氀漀琀 漀昀 猀愀洀攀 戀甀礀 漀爀搀攀爀猀 
      }਀   
      // Replace 1 == 0 to your conditions to sell order.਀      椀昀 ⠀ ㄀ 㴀㴀 　 ☀☀ 䰀愀猀琀伀爀搀攀爀 ℀㴀 　 ⤀ 笀 ⼀⼀ 䰀愀猀琀伀爀搀攀爀℀㴀 　 瀀爀攀瘀攀渀琀 猀挀爀椀瀀琀 昀爀漀洀 洀愀欀椀渀最 愀 氀漀琀 漀昀 猀愀洀攀 猀攀氀氀 漀爀搀攀爀猀 
         Ticket = OrderSend ( Symbol(), OP_SELL, Lots, Bid, Slippage, Bid + ( StopLoss * Point ), Bid - ( TakeProfit * Point ), NULL, 0, 0, Red);਀         䰀愀猀琀伀爀搀攀爀 㴀 　㬀 ⼀⼀ 䤀琀 瀀爀攀瘀攀渀琀 猀挀爀椀瀀琀 昀爀漀洀 洀愀欀椀渀最 愀 氀漀琀 漀昀 猀愀洀攀 猀攀氀氀 漀爀搀攀爀猀 
      }਀    
      // Replace 1 == 0 to your conditions to sellstop order.਀      椀昀 ⠀ ㄀ 㴀㴀 　 ☀☀ 䰀愀猀琀伀爀搀攀爀 ℀㴀 　 ⤀ 笀  ⼀⼀ 䰀愀猀琀伀爀搀攀爀℀㴀 　 瀀爀攀瘀攀渀琀 猀挀爀椀瀀琀 昀爀漀洀 洀愀欀椀渀最 愀 氀漀琀 漀昀 猀愀洀攀 猀攀氀氀猀琀漀瀀 漀爀搀攀爀猀 
         Ticket = OrderSend ( Symbol(), OP_SELLSTOP, Lots, Bid - ( Pips * Point ) , Slippage, Bid - ( Pips * Point ) + ( StopLoss * Point ), Bid + ( Pips * Point ) - ( TakeProfit * Point ), NULL, Magic, TimeCurrent() + ( 60 * Mins ), Red);਀         䰀愀猀琀伀爀搀攀爀 㴀 　㬀 ⼀⼀ 䤀琀 瀀爀攀瘀攀渀琀 猀挀爀椀瀀琀 昀爀漀洀 洀愀欀椀渀最 愀 氀漀琀 漀昀 猀愀洀攀 猀攀氀氀 漀爀搀攀爀猀 
      }਀       
   }਀ 
return ( 0 );਀紀 
਀椀渀琀 挀氀漀猀攀⠀⤀ 笀 ⼀⼀ 䌀氀漀猀攀 椀猀 攀砀攀挀甀琀攀搀 眀栀攀渀 猀挀爀椀瀀琀 昀椀渀搀 漀瀀攀渀攀搀 漀爀搀攀爀 漀渀 挀甀爀爀攀渀琀 猀礀洀戀漀氀 
਀   ⼀⼀ 䠀攀爀攀 礀漀甀 挀愀渀 瀀氀愀挀攀 椀渀搀椀挀愀琀漀爀猀Ⰰ 挀愀渀搀氀攀 猀挀愀渀 愀渀搀 漀琀栀攀爀 猀琀甀昀昀 琀漀 猀攀琀 挀漀渀搀椀挀椀漀渀猀 昀漀爀 挀氀漀猀椀渀最 琀栀攀 漀爀搀攀爀⸀ 
਀   椀昀 ⠀ 伀爀搀攀爀吀礀瀀攀⠀⤀ 㴀㴀 伀倀开䈀唀夀 ⤀ 笀 
    ਀         刀攀昀爀攀猀栀刀愀琀攀猀⠀⤀㬀 ⼀⼀ 刀攀昀爀攀猀栀刀愀琀攀⠀⤀ 甀瀀搀愀琀攀 䈀椀搀 愀渀搀 䄀猀欀 瘀愀氀甀攀⸀ 
         // Calculate Trailing Stop.਀         椀昀 ⠀ 䈀椀搀 㸀㴀 伀爀搀攀爀伀瀀攀渀倀爀椀挀攀⠀⤀ ⬀ 吀爀愀椀氀椀渀最匀琀愀爀琀 ⨀ 倀漀椀渀琀 ☀☀ 伀爀搀攀爀匀琀漀瀀䰀漀猀猀⠀⤀ 㰀 䈀椀搀 ⴀ ⠀ 吀爀愀椀氀椀渀最匀琀漀瀀 ⨀ 倀漀椀渀琀 ⤀ ⤀ 笀 
            Ticket = OrderModify ( OrderTicket(), OrderOpenPrice(), Bid - ( TrailingStop * Point ), OrderTakeProfit() , 0 );਀         紀     
         // Calculate BA.          ਀         椀昀 ⠀ 䈀椀搀 㸀㴀 伀爀搀攀爀伀瀀攀渀倀爀椀挀攀⠀⤀ ⬀ 䈀愀 ⨀ 倀漀椀渀琀 ☀☀ 䈀椀搀 㰀 伀爀搀攀爀伀瀀攀渀倀爀椀挀攀⠀⤀ ⬀ ⠀ 䈀愀 ⬀ 㔀 ⤀ ⨀ 倀漀椀渀琀 ⤀ 笀 
            Ticket = OrderModify ( OrderTicket(), OrderOpenPrice(), OrderOpenPrice() + ( 10 * Point ), OrderTakeProfit() , 0 );                ਀         紀  
         ਀         ⼀⼀ 刀攀瀀氀愀挀攀 ㄀ 㴀㴀 　 琀漀 挀漀渀搀椀琀椀漀渀猀 琀漀 挀氀漀猀攀 䈀甀礀 漀爀搀攀爀⸀ 
         if ( 1 == 0 ) {਀            吀椀挀欀攀琀 㴀 伀爀搀攀爀䌀氀漀猀攀 ⠀ 吀椀挀欀攀琀Ⰰ 伀爀搀攀爀䰀漀琀猀⠀⤀Ⰰ 伀爀搀攀爀䌀氀漀猀攀倀爀椀挀攀⠀⤀Ⰰ 匀氀椀瀀瀀愀最攀Ⰰ 䜀爀攀攀渀 ⤀㬀 
         }    ਀           
      }਀   
   if ( OrderType() == OP_SELL ) {਀     
         RefreshRates(); // RefreshRate() update Bid and Ask value.਀         ⼀⼀ 䌀愀氀挀甀氀愀琀攀 吀爀愀椀氀椀渀最 匀琀漀瀀⸀ 
         if ( Ask <= OrderOpenPrice() - TrailingStart * Point && OrderStopLoss() > Ask + ( TrailingStop * Point ) ) {਀            吀椀挀欀攀琀 㴀 伀爀搀攀爀䴀漀搀椀昀礀 ⠀ 伀爀搀攀爀吀椀挀欀攀琀⠀⤀Ⰰ 伀爀搀攀爀伀瀀攀渀倀爀椀挀攀⠀⤀Ⰰ 䄀猀欀 ⬀ ⠀ 吀爀愀椀氀椀渀最匀琀漀瀀 ⨀ 倀漀椀渀琀 ⤀Ⰰ 伀爀搀攀爀吀愀欀攀倀爀漀昀椀琀⠀⤀Ⰰ 　 ⤀㬀 
         }  ਀         ⼀⼀ 䌀愀氀挀甀氀愀琀攀 䈀䄀⸀ 
         if ( Ask <= OrderOpenPrice() - Ba * Point &&  Ask > OrderOpenPrice() - ( Ba + 5 ) * Point  ) {਀            吀椀挀欀攀琀 㴀 伀爀搀攀爀䴀漀搀椀昀礀 ⠀ 伀爀搀攀爀吀椀挀欀攀琀⠀⤀Ⰰ 伀爀搀攀爀伀瀀攀渀倀爀椀挀攀⠀⤀Ⰰ 伀爀搀攀爀伀瀀攀渀倀爀椀挀攀⠀⤀ ⴀ ⠀ ㄀　 ⨀ 倀漀椀渀琀 ⤀ Ⰰ 伀爀搀攀爀吀愀欀攀倀爀漀昀椀琀⠀⤀Ⰰ 　 ⤀㬀 
         } ਀          
         // Replace 1 == 0 to conditions to close Sell order.਀         椀昀 ⠀ ㄀ 㴀㴀 　 ⤀ 笀 
            Ticket = OrderClose ( Ticket, OrderLots(), OrderClosePrice(), Slippage, Red );਀         紀     
          ਀      紀     
      ਀   
  ਀爀攀琀甀爀渀 ⠀ 　 ⤀㬀 
}