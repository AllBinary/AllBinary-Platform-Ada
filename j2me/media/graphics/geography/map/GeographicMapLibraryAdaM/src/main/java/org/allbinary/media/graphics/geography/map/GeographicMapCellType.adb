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


package body org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package is

   procedure Initialize_Fields (This : in out GeographicMapCellType'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GeographicMapCellType'Class; type_Id : Integer; reset : Integer) is
      geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access;
      geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access;
   begin
      Initialize_Fields (This);
        This.type_Id := type_Id;
        if (type_Id) /= (Integer_Package.MIN_VALUE) then
            geographicMapCellTypeFactory := GeographicMapCellTypeFactory_Package.getInstance;
            geographicMapCellTypeArray := geographicMapCellTypeFactory.getGeographicMapCellTypeArray;
            if ((geographicMapCellTypeArray (type_Id)) = (null)) or else ((reset) = (1)) then
                geographicMapCellTypeArray (type_Id) := This'Unchecked_Access;
            else
                if (reset) /= (-(1)) then
                    Java_Throw (Java_New_Exception ("RuntimeException"));
                end if;
            end if;
        end if;
   end Initialize;

   function Create (type_Id : Integer; reset : Integer) return GeographicMapCellType_Access is
      This : constant GeographicMapCellType_Access := new GeographicMapCellType;
   begin
      Initialize (This.all, type_Id, reset);
      return This;
   end Create;

   function getType (This : in out GeographicMapCellType) return Integer is
   begin
        return This.type_Id;
   end getType;

   function toString (This : in out GeographicMapCellType) return Unbounded_String is
   begin
        return SmallIntegerSingletonFactory_Package.getInstance.getAt (This.type_Id).toString;
   end toString;

   procedure getType (This : in out GeographicMapCellType) is
      Java_Result : constant Integer := GeographicMapCellType'Class (This).getType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getType;

   procedure toString (This : in out GeographicMapCellType) is
      Java_Result : constant Unbounded_String := GeographicMapCellType'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

begin
   null;
   NULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY := new GeographicMapCellType_Access_Array'(0 .. (0) - 1 => null);
   NULL_GEOGRAPHIC_MAP_CELL_TYPE := GeographicMapCellType_Package.Create (Integer_Package.MIN_VALUE, 0);

end org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;


