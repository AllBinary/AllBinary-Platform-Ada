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


with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.view.StaticViewPosition_Package; use org.allbinary.view.StaticViewPosition_Package;

package body org.allbinary.view.CenterStaticViewPositionFactory_Package is

   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   procedure Initialize_Fields (This : in out CenterStaticViewPositionFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CenterStaticViewPositionFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CenterStaticViewPositionFactory_Access is
      This : constant CenterStaticViewPositionFactory_Access := new CenterStaticViewPositionFactory;
   begin
      CenterStaticViewPositionFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (This : in out CenterStaticViewPositionFactory; z : Integer) return ViewPositionBase_Access is
      displayInfoSingleton : DisplayInfoSingleton_Access;
   begin
        displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
        return ViewPositionBase_Access (StaticViewPosition_Package.Create ((Java_Shift_Right_Arithmetic (displayInfoSingleton.getLastWidth, 1)), (Java_Shift_Right_Arithmetic (displayInfoSingleton.getLastHeight, 1)), z));
   end getInstance;

   procedure getInstance (This : in out CenterStaticViewPositionFactory; z : Integer) is
      Java_Result : constant ViewPositionBase_Access := CenterStaticViewPositionFactory'Class (This).getInstance (z => z);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.view.CenterStaticViewPositionFactory_Package;


