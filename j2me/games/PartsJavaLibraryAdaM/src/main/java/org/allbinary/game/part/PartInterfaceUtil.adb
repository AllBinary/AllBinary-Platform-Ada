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


package body org.allbinary.game.part.PartInterfaceUtil_Package is

   procedure Initialize_Fields (This : in out PartInterfaceUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PartInterfaceUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PartInterfaceUtil_Access is
      This : constant PartInterfaceUtil_Access := new PartInterfaceUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getZeroArray return PartInterface_Access_Array_Access is
   begin
        return PartInterfaceUtil_Package.SINGLETON;
   end getZeroArray;

   procedure getZeroArray is
      Java_Result : constant PartInterface_Access_Array_Access := getZeroArray;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getZeroArray;

begin
   null;
   SINGLETON := new PartInterface_Access_Array'(0 .. (0) - 1 => null);

end org.allbinary.game.part.PartInterfaceUtil_Package;


