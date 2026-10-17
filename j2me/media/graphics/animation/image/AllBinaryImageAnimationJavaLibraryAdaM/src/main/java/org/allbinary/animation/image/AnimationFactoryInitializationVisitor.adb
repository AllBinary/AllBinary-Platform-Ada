-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package is

   procedure Initialize_Fields (This : in out AnimationFactoryInitializationVisitor'Class) is
   begin
      null;
      This.width := 0;
      This.height := 0;
      This.dx := 0;
      This.dy := 0;
      This.originalDx := 0;
      This.originalDy := 0;
   end Initialize_Fields;

   procedure Initialize (This : in out AnimationFactoryInitializationVisitor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AnimationFactoryInitializationVisitor_Access is
      This : constant AnimationFactoryInitializationVisitor_Access := new AnimationFactoryInitializationVisitor;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure visit (This : in out AnimationFactoryInitializationVisitor) is
   begin
        null;
   end visit;

   function toString (This : in out AnimationFactoryInitializationVisitor) return Unbounded_String is
      commonSeps : CommonSeps_Access;
      commonLabels : CommonLabels_Access;
      stringBuffer : StringMaker_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        commonLabels := CommonLabels_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (PositionStrings_Package.getInstance.DX_LABEL).appendfloat (Float (This.dx));
        stringBuffer.append (PositionStrings_Package.getInstance.DY_LABEL).appendfloat (Float (This.dy));
        stringBuffer.append (commonLabels.WIDTH_LABEL);
        stringBuffer.appendint (This.width);
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint (This.height);
        return stringBuffer.toString;
   end toString;

   procedure toString (This : in out AnimationFactoryInitializationVisitor) is
      Java_Result : constant Unbounded_String := AnimationFactoryInitializationVisitor'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package;


