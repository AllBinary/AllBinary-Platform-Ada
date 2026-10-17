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


package body org.allbinary.string_Id.CommonPhoneStrings_Package is

   procedure Initialize_Fields (This : in out CommonPhoneStrings'Class) is
   begin
      null;
      This.UP := To_Unbounded_String ("UP");
      This.DOWN := To_Unbounded_String ("DOWN");
      This.LEFT := To_Unbounded_String ("LEFT");
      This.RIGHT := To_Unbounded_String ("RIGHT");
      This.ZERO := To_Unbounded_String ("0");
      This.ONE := To_Unbounded_String ("1");
      This.TWO := To_Unbounded_String ("2");
      This.THREE := To_Unbounded_String ("3");
      This.FOUR := To_Unbounded_String ("4");
      This.FIVE := To_Unbounded_String ("5");
      This.SIX := To_Unbounded_String ("6");
      This.SEVEN := To_Unbounded_String ("7");
      This.EIGHT := To_Unbounded_String ("8");
      This.NINE := To_Unbounded_String ("9");
      This.POUND := To_Unbounded_String ("#");
      This.STAR := To_Unbounded_String ("*");
      This.FIRE := To_Unbounded_String ("FIRE");
   end Initialize_Fields;

   procedure Initialize (This : in out CommonPhoneStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CommonPhoneStrings_Access is
      This : constant CommonPhoneStrings_Access := new CommonPhoneStrings;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return CommonPhoneStrings_Access is
   begin
        return CommonPhoneStrings_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant CommonPhoneStrings_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := CommonPhoneStrings_Package.Create;

end org.allbinary.string_Id.CommonPhoneStrings_Package;


