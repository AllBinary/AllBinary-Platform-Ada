--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.game.layer.hud.basic.LapWidget_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out LapWidget'Class) is
   begin
      null;
      This.LAP_STR := To_Unbounded_String ("Lap ");
      This.OF_STR := To_Unbounded_String (" of ");
      This.string_Id := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;


   procedure Initialize (This : in out LapWidget'Class; location : Integer; direction : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        BasicHud_Package.Initialize (This, location, direction, 2, basicColor);
        Initialize_Fields (This);
        This.updateMaxHeight := 15;
        This.updateMaxWidth := 40;
   end Initialize;

   function Create (location : Integer; direction : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return LapWidget_Access is
      This : constant LapWidget_Access := new LapWidget;
   begin
      LapWidget_Package.Initialize (This.all, location, direction, basicColor_Param);
      return This;
   end Create;

   procedure update (This : in out LapWidget; lapInfo_Param : access LapInfo_Package.LapInfo'Class) is
      lapInfo : constant LapInfo_Access := LapInfo_Access (lapInfo_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (This.LAP_STR);
        stringBuffer.appendint (Integer (lapInfo.getCurrentLap));
        stringBuffer.append (This.OF_STR);
        stringBuffer.appendint (Integer (lapInfo.getTotalLaps));
        This.string_Id := stringBuffer.toString;
   end update;

   procedure paint (This : in out LapWidget; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        BasicHud (This).paintString (graphics, This.string_Id);
   end paint;

end org.allbinary.game.layer.hud.basic.LapWidget_Package;


