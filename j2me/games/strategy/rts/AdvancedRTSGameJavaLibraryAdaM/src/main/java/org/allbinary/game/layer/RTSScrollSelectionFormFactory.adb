-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.form.FormTypeFactory_Package; use org.allbinary.graphics.form.FormTypeFactory_Package;
with org.allbinary.graphics.form.MultipleScrollSelectionHorizontalForm_Package; use org.allbinary.graphics.form.MultipleScrollSelectionHorizontalForm_Package;
with org.allbinary.input.motion.button.CommonButtons_Package; use org.allbinary.input.motion.button.CommonButtons_Package;
with org.allbinary.input.motion.button.TouchButtonLocationHelper_Package; use org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;

package body org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package is

   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package FormTypeFactory_Package renames Standard.org.allbinary.graphics.form.FormTypeFactory_Package;
   package MultipleScrollSelectionHorizontalForm_Package renames Standard.org.allbinary.graphics.form.MultipleScrollSelectionHorizontalForm_Package;
   package CommonButtons_Package renames Standard.org.allbinary.input.motion.button.CommonButtons_Package;
   package TouchButtonLocationHelper_Package renames Standard.org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;
   procedure Initialize_Fields (This : in out RTSScrollSelectionFormFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out RTSScrollSelectionFormFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RTSScrollSelectionFormFactory_Access is
      This : constant RTSScrollSelectionFormFactory_Access := new RTSScrollSelectionFormFactory;
   begin
      RTSScrollSelectionFormFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (formLabel : Unbounded_String; items : ABCustomItem_Access_Array_Access) return ScrollSelectionForm_Access is
      basicColorFactory : BasicColorFactory_Access;
      touchButtonLocationHelper : TouchButtonLocationHelper_Access;
      displayInfo : DisplayInfoSingleton_Access;
      menuX : Integer;
      width : Integer;
      menuRectangle : Rectangle_Access;
   begin
        basicColorFactory := BasicColorFactory_Package.getInstance;
        touchButtonLocationHelper := TouchButtonLocationHelper_Package.Create;
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        menuX := (CommonButtons_Package.getInstance.STANDARD_BUTTON_SIZE) + (touchButtonLocationHelper.getColumnsRemainderHalf);
        width := (displayInfo.getLastWidth) - (((menuX) * (2)));
        menuRectangle := Rectangle_Package.Create (PointFactory_Package.getInstance.createXY (menuX, 16), width, CommonButtons_Package.getInstance.STANDARD_BUTTON_SIZE);
        return MultipleScrollSelectionHorizontalForm_Package.createForm (formLabel, items, menuRectangle, FormTypeFactory_Package.getInstance.HORIZONTAL_FORM, 0, basicColorFactory.BLACK, basicColorFactory.WHITE);
   end getInstance;

   procedure getInstance (formLabel : Unbounded_String; items : ABCustomItem_Access_Array_Access) is
      Java_Result : constant ScrollSelectionForm_Access := getInstance (formLabel, items);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package;


