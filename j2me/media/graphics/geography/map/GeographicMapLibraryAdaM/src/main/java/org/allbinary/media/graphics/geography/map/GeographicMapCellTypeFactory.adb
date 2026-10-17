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


package body org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package is

   procedure Initialize_Fields (This : in out GeographicMapCellTypeFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.geographicMapCellTypeArray := new GeographicMapCellType_Access_Array'(0 .. (512) - 1 => null);
   end Initialize_Fields;

   procedure Initialize (This : in out GeographicMapCellTypeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GeographicMapCellTypeFactory_Access is
      This : constant GeographicMapCellTypeFactory_Access := new GeographicMapCellTypeFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return GeographicMapCellTypeFactory_Access is
   begin
        return GeographicMapCellTypeFactory_Package.instance;
   end getInstance;

   function get (This : in out GeographicMapCellTypeFactory; type_Id : Integer) return GeographicMapCellType_Access is
   begin
        return This.geographicMapCellTypeArray (type_Id);
   end get;

   function getGeographicMapCellTypeArray (This : in out GeographicMapCellTypeFactory) return GeographicMapCellType_Access_Array_Access is
   begin
        return This.geographicMapCellTypeArray;
   end getGeographicMapCellTypeArray;

   function getStartType (This : in out GeographicMapCellTypeFactory) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getStartType;

   function getEndType (This : in out GeographicMapCellTypeFactory) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getEndType;

   function getEmptyType (This : in out GeographicMapCellTypeFactory) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getEmptyType;

   function isPath (This : in out GeographicMapCellTypeFactory; cellType : GeographicMapCellType_Access) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isPath;

   procedure getInstance is
      Java_Result : constant GeographicMapCellTypeFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure get (This : in out GeographicMapCellTypeFactory; type_Id : Integer) is
      Java_Result : constant GeographicMapCellType_Access := GeographicMapCellTypeFactory'Class (This).get (type_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getGeographicMapCellTypeArray (This : in out GeographicMapCellTypeFactory) is
      Java_Result : constant GeographicMapCellType_Access_Array_Access := GeographicMapCellTypeFactory'Class (This).getGeographicMapCellTypeArray;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellTypeArray;

   procedure getStartType (This : in out GeographicMapCellTypeFactory) is
      Java_Result : constant Integer := GeographicMapCellTypeFactory'Class (This).getStartType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStartType;

   procedure getEndType (This : in out GeographicMapCellTypeFactory) is
      Java_Result : constant Integer := GeographicMapCellTypeFactory'Class (This).getEndType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEndType;

   procedure getEmptyType (This : in out GeographicMapCellTypeFactory) is
      Java_Result : constant Integer := GeographicMapCellTypeFactory'Class (This).getEmptyType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEmptyType;

   procedure isPath (This : in out GeographicMapCellTypeFactory; cellType : GeographicMapCellType_Access) is
      Java_Result : constant Boolean := GeographicMapCellTypeFactory'Class (This).isPath (cellType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isPath;

begin
   null;
   instance := GeographicMapCellTypeFactory_Package.Create;

end org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;


