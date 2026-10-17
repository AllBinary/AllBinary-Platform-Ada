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


package body org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package is

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
      Initialize (This.all);
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


