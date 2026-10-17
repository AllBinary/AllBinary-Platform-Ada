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


package body org.allbinary.math.PositionStrings_Package is

   procedure Initialize_Fields (This : in out PositionStrings'Class) is
   begin
      null;
      This.X := To_Unbounded_String ("x");
      This.Y := To_Unbounded_String ("y");
      This.X_LABEL := To_Unbounded_String ("x: ");
      This.Y_LABEL := To_Unbounded_String ("y: ");
      This.Z_LABEL := To_Unbounded_String ("z: ");
      This.DX_LABEL := To_Unbounded_String ("dx: ");
      This.DY_LABEL := To_Unbounded_String ("dy: ");
      This.DZ_LABEL := To_Unbounded_String ("dz: ");
   end Initialize_Fields;

   procedure Initialize (This : in out PositionStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PositionStrings_Access is
      This : constant PositionStrings_Access := new PositionStrings;
   begin
      PositionStrings_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PositionStrings_Access is
   begin
        return PositionStrings_Package.instance;
   end getInstance;

begin
   null;
   instance := PositionStrings_Package.Create;

end org.allbinary.math.PositionStrings_Package;


