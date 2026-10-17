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


package body org.allbinary.game.layer.capital.Capital_Package is

   procedure Initialize_Fields (This : in out Capital'Class) is
   begin
      null;
      This.value := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out Capital'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return Capital_Access is
      This : constant Capital_Access := new Capital;
   begin
      Capital_Package.Initialize (This.all);
      return This;
   end Create;

   function getTotalMoney (This : in out Capital) return Integer is
   begin
        return This.value;
   end getTotalMoney;

   procedure removeMoney (This : in out Capital; points : Integer) is
   begin
        This.value := (This.value) - (points);
   end removeMoney;

   procedure addMoney (This : in out Capital; points : Integer) is
   begin
        This.value := (This.value) + (points);
   end addMoney;

end org.allbinary.game.layer.capital.Capital_Package;


