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

package body org.allbinary.game.layer.hud.LapInfo_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out LapInfo'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out LapInfo'Class; totalLaps : Integer) is
   begin
      Initialize_Fields (This);
        This.totalLaps := totalLaps;
        This.numberOfLaps := 1;
   end Initialize;

   function Create (totalLaps : Integer) return LapInfo_Access is
      This : constant LapInfo_Access := new LapInfo;
   begin
      LapInfo_Package.Initialize (This.all, totalLaps);
      return This;
   end Create;

   procedure add (This : in out LapInfo) is
   begin
        This.numberOfLaps := This.numberOfLaps + 1;
   end add;

   function getCurrentLap (This : in out LapInfo) return Integer is
   begin
        return This.numberOfLaps;
   end getCurrentLap;

   function getTotalLaps (This : in out LapInfo) return Integer is
   begin
        return This.totalLaps;
   end getTotalLaps;

   function isDone (This : in out LapInfo) return Boolean is
   begin
        if (This.numberOfLaps) >= (This.totalLaps) then
            return True;
        end if;
        return False;
   end isDone;

   function toString (This : in out LapInfo) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("isDone: "));
        stringBuffer.appendboolean (LapInfo'Class (This).isDone);
        stringBuffer.append (To_Unbounded_String (" CurrentLap: "));
        stringBuffer.appendint (LapInfo'Class (This).getCurrentLap);
        stringBuffer.append (To_Unbounded_String (" Total Laps: "));
        stringBuffer.appendint (LapInfo'Class (This).getTotalLaps);
        return stringBuffer.toString;
   end toString;

begin
   null;
   NULL_LAP_INFO := LapInfo_Package.Create (-(1));

end org.allbinary.game.layer.hud.LapInfo_Package;


