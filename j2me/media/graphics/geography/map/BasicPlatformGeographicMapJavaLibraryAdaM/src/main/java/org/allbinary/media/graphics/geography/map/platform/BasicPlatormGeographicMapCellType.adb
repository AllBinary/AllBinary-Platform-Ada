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


package body org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package is

   procedure Initialize_Fields (This : in out BasicPlatormGeographicMapCellType'Class) is
   begin
      null;
      
   end Initialize_Fields;


   function createType (type_Id : Integer) return BasicPlatormGeographicMapCellType_Access is
      types : BasicArrayList_Access;
      basicPlatormGeographicMapCellType : BasicPlatormGeographicMapCellType_Access;
   begin
        types := BasicArrayListS_Package.Create (1);
        types.add (SmallIntegerSingletonFactory_Package.getInstance.getAt (type_Id));
        basicPlatormGeographicMapCellType := BasicPlatormGeographicMapCellType_Package.Create (types);
        return basicPlatormGeographicMapCellType;
   end createType;

   procedure Initialize (This : in out BasicPlatormGeographicMapCellType'Class; types : BasicArrayList_Access) is
      size : Integer;
      typeArray : Integer_Array_Access;
      typeAsInteger : Integer;
      type_Id : Integer;
      index : Integer;
   begin
      Initialize_Fields (This);
        size := types.size;
        typeArray := new Integer_Array'(0 .. (size) - 1 => 0);
        typeAsInteger := null;
        type_Id := 0;
        for index in 0 .. (size) - 1 loop
            typeAsInteger := (Integer (types.get (index)));
            type_Id := typeAsInteger.intValue;
            GeographicMapCellType_Package.Create (type_Id, 0);
            typeArray (index) := type_Id;
        end loop;
        This.types := typeArray;
   end Initialize;

   function Create (types : BasicArrayList_Access) return BasicPlatormGeographicMapCellType_Access is
      This : constant BasicPlatormGeographicMapCellType_Access := new BasicPlatormGeographicMapCellType;
   begin
      Initialize (This.all, types);
      return This;
   end Create;

   function isType (This : in out BasicPlatormGeographicMapCellType; type_Id : GeographicMapCellType_Access) return Boolean is
   begin
        return This.hasType (type_Id.getType);
   end isType;

   function hasType (This : in out BasicPlatormGeographicMapCellType; type_Id : Integer) return Boolean is
      size : Integer;
      index : Integer;
   begin
        size := This.types'Length;
        for index in 0 .. (size) - 1 loop
            if (This.types (index)) = (type_Id) then
                return True;
            end if;
        end loop;
        return False;
   end hasType;

   procedure createType (type_Id : Integer) is
      Java_Result : constant BasicPlatormGeographicMapCellType_Access := createType (type_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createType;

   procedure isType (This : in out BasicPlatormGeographicMapCellType; type_Id : GeographicMapCellType_Access) is
      Java_Result : constant Boolean := BasicPlatormGeographicMapCellType'Class (This).isType (type_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isType;

   procedure hasType (This : in out BasicPlatormGeographicMapCellType; type_Id : Integer) is
      Java_Result : constant Boolean := BasicPlatormGeographicMapCellType'Class (This).hasType (type_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end hasType;

end org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package;


