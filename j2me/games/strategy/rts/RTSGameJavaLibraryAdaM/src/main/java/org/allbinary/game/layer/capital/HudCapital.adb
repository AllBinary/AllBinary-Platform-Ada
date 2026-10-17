-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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


package body org.allbinary.game.layer.capital.HudCapital_Package is

   procedure Initialize_Fields (This : in out HudCapital'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out HudCapital'Class; moneyGraphic : NumberStringHud_Access) is
   begin
      Capital_Package.Initialize (This);
      Initialize_Fields (This);
        This.capitalGraphic := moneyGraphic;
   end Initialize;

   function Create (moneyGraphic : NumberStringHud_Access) return HudCapital_Access is
      This : constant HudCapital_Access := new HudCapital;
   begin
      Initialize (This.all, moneyGraphic);
      return This;
   end Create;

   procedure removeMoney (This : in out HudCapital; points : Integer) is
   begin
        Capital (This).removeMoney (points);
        This.capitalGraphic.reduce (points);
   end removeMoney;

   function getTotalMoney (This : in out HudCapital) return Integer is
   begin
        return This.capitalGraphic.get;
   end getTotalMoney;

   procedure addMoney (This : in out HudCapital; points : Integer) is
   begin
        Capital (This).addMoney (points);
        This.capitalGraphic.add (points);
   end addMoney;

   procedure getTotalMoney (This : in out HudCapital) is
      Java_Result : constant Integer := HudCapital'Class (This).getTotalMoney;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalMoney;

end org.allbinary.game.layer.capital.HudCapital_Package;


