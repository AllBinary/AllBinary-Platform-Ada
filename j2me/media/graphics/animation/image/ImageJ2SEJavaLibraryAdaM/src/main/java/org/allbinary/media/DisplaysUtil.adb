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


with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;

package body org.allbinary.media.DisplaysUtil_Package is

   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   procedure Initialize_Fields (This : in out DisplaysUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out DisplaysUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DisplaysUtil_Access is
      This : constant DisplaysUtil_Access := new DisplaysUtil;
   begin
      DisplaysUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return DisplaysUtil_Access is
   begin
        return DisplaysUtil_Package.instance;
   end getInstance;

   function getPrimaryScreenSize (This : in out DisplaysUtil) return Rectangle_Access is
      dimension : Dimension_Access;
   begin
        dimension := Toolkit_Package.getDefaultToolkit.getScreenSize;
        return Rectangle_Package.Create (PointFactory_Package.getInstance.ZERO_ZERO, dimension.width, dimension.height);
   end getPrimaryScreenSize;

   function getScreenSizesAsRectangleArray (This : in out DisplaysUtil) return Rectangle_Access_Array_Access is
      graphicsEnvironment : GraphicsEnvironment_Access;
      graphicsDeviceArray : GraphicsDevice_Access_Array_Access;
      graphicsDevice : GraphicsDevice_Access;
      displayMode : DisplayMode_Access;
      rectangle : Rectangle_Access;
      size : Integer;
      rectangleArray : Rectangle_Access_Array_Access;
      index : Integer;
   begin
        graphicsEnvironment := GraphicsEnvironment_Package.getLocalGraphicsEnvironment;
        graphicsDeviceArray := graphicsEnvironment.getScreenDevices;
        graphicsDevice := null;
        displayMode := null;
        rectangle := null;
        size := graphicsDeviceArray'Length;
        rectangleArray := new Rectangle_Access_Array'(0 .. (size) - 1 => null);
        for index in 0 .. (size) - 1 loop
            graphicsDevice := graphicsDeviceArray (index);
            displayMode := graphicsDevice.getDisplayMode;
            rectangle := Rectangle_Package.Create (PointFactory_Package.getInstance.ZERO_ZERO, displayMode.getWidth, displayMode.getHeight);
            rectangleArray (index) := rectangle;
        end loop;
        return rectangleArray;
   end getScreenSizesAsRectangleArray;

begin
   null;
   instance := DisplaysUtil_Package.Create;

end org.allbinary.media.DisplaysUtil_Package;


