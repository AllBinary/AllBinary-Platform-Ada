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


package body org.allbinary.game.displayable.canvas.FormUtil_Package is

   procedure Initialize_Fields (This : in out FormUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out FormUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return FormUtil_Access is
      This : constant FormUtil_Access := new FormUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return FormUtil_Access is
   begin
        return FormUtil_Package.instance;
   end getInstance;

   function createFormRectangle (This : in out FormUtil) return Rectangle_Access is
      displayInfo : DisplayInfoSingleton_Access;
      pointFactory : PointFactory_Access;
      rectangle : Rectangle_Access;
   begin
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        pointFactory := PointFactory_Package.getInstance;
        rectangle := Rectangle_Package.Create (pointFactory.createXY (30, 10), (displayInfo.getLastWidth) - (30), (displayInfo.getLastHeight) - (35));
        return rectangle;
   end createFormRectangle;

   procedure getInstance is
      Java_Result : constant FormUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure createFormRectangle (This : in out FormUtil) is
      Java_Result : constant Rectangle_Access := FormUtil'Class (This).createFormRectangle;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFormRectangle;

begin
   null;
   instance := FormUtil_Package.Create;

end org.allbinary.game.displayable.canvas.FormUtil_Package;


