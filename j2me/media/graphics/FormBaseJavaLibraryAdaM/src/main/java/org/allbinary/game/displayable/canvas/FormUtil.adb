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


with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package body org.allbinary.game.displayable.canvas.FormUtil_Package is

   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
      FormUtil_Package.Initialize (This.all);
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

begin
   null;
   instance := FormUtil_Package.Create;

end org.allbinary.game.displayable.canvas.FormUtil_Package;


