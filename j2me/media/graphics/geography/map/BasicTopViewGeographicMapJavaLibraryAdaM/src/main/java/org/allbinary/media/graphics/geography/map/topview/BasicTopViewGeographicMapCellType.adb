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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;

package body org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
   package RaceTrackGeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayListS_Package renames Standard.org.allbinary.util.BasicArrayListS_Package;
   procedure Initialize_Fields (This : in out BasicTopViewGeographicMapCellType'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
   end Initialize_Fields;


   function createType (name : Unbounded_String; type_Id : Integer; cost : Integer) return BasicTopViewGeographicMapCellType_Access is
      types : BasicArrayList_Access;
   begin
        types := BasicArrayList_Access (BasicArrayListS_Package.Create (1));
        types.add (type_Id);
        return BasicTopViewGeographicMapCellType_Package.Create (name, types, cost);
   end createType;

   procedure Initialize (This : in out BasicTopViewGeographicMapCellType'Class; name : Unbounded_String; types_Param : access BasicArrayList_Package.BasicArrayList'Class; cost : Integer) is
      types : constant BasicArrayList_Access := BasicArrayList_Access (types_Param);
      size : Integer;
      typeArray : Integer_Array_Access;
      typeAsInteger : Integer;
      type_Id : Integer;
      index : Integer;
   begin
      Initialize_Fields (This);
        size := types.size;
        typeArray := new Integer_Array'(0 .. (size) - 1 => 0);
        typeAsInteger := 0;
        type_Id := 0;
        for index in 0 .. (size) - 1 loop
            typeAsInteger := (Integer (types.get (index)));
            type_Id := Integer (typeAsInteger);
            if (GeographicMapCellTypeFactory_Package.getInstance.getGeographicMapCellTypeArray (type_Id)) = (null) then
                RaceTrackGeographicMapCellType_Package.Create (name, type_Id, cost, 0);
            else
                null;
            end if;
            typeArray (index) := type_Id;
        end loop;
        This.name := name;
        This.cost := cost;
        This.types := typeArray;
   end Initialize;

   function Create (name : Unbounded_String; types_Param : access BasicArrayList_Package.BasicArrayList'Class; cost : Integer) return BasicTopViewGeographicMapCellType_Access is
      This : constant BasicTopViewGeographicMapCellType_Access := new BasicTopViewGeographicMapCellType;
   begin
      BasicTopViewGeographicMapCellType_Package.Initialize (This.all, name, types_Param, cost);
      return This;
   end Create;

   function isType (This : in out BasicTopViewGeographicMapCellType; type_Id_Param : access GeographicMapCellType_Package.GeographicMapCellType'Class) return Boolean is
      type_Id : constant GeographicMapCellType_Access := GeographicMapCellType_Access (type_Id_Param);
   begin
        return BasicTopViewGeographicMapCellType'Class (This).hasType (type_Id.getType);
   end isType;

   function hasType (This : in out BasicTopViewGeographicMapCellType; type_Id : Integer) return Boolean is
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

   function getTypes (This : in out BasicTopViewGeographicMapCellType) return Integer_Array_Access is
   begin
        return This.types;
   end getTypes;

   function toString (This : in out BasicTopViewGeographicMapCellType) return Unbounded_String is
      stringMaker : StringMaker_Access;
      size : Integer;
      index : Integer;
   begin
        stringMaker := StringMaker_Package.Create;
        size := This.types'Length;
        for index in 0 .. (size) - 1 loop
            stringMaker.appendint (This.types (index)).append (CommonSeps_Package.getInstance.COMMA);
        end loop;
        return stringMaker.toString;
   end toString;

   procedure createType (name : Unbounded_String; type_Id : Integer; cost : Integer) is
      Java_Result : constant BasicTopViewGeographicMapCellType_Access := createType (name => name, type_Id => type_Id, cost => cost);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createType;

   procedure isType (This : in out BasicTopViewGeographicMapCellType; type_Id_Param : access GeographicMapCellType_Package.GeographicMapCellType'Class) is
      Java_Result : constant Boolean := BasicTopViewGeographicMapCellType'Class (This).isType (type_Id_Param => type_Id_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isType;

   procedure hasType (This : in out BasicTopViewGeographicMapCellType; type_Id : Integer) is
      Java_Result : constant Boolean := BasicTopViewGeographicMapCellType'Class (This).hasType (type_Id => type_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end hasType;

end org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package;


