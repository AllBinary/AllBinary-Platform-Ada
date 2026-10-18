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


with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;

package body org.allbinary.graphics.RelativeRelationship_Package is

   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   procedure Initialize_Fields (This : in out RelativeRelationship'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out RelativeRelationship'Class; point_Param : access GPoint_Package.GPoint'Class; typesAllowedList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      point : constant GPoint_Access := GPoint_Access (point_Param);
      typesAllowedList : constant BasicArrayList_Access := BasicArrayList_Access (typesAllowedList_Param);
   begin
      Initialize_Fields (This);
        This.x := point.getX;
        This.y := point.getY;
        This.z := point.getZ;
        This.typesAllowedList := typesAllowedList;
   end Initialize;

   function Create (point_Param : access GPoint_Package.GPoint'Class; typesAllowedList_Param : access BasicArrayList_Package.BasicArrayList'Class) return RelativeRelationship_Access is
      This : constant RelativeRelationship_Access := new RelativeRelationship;
   begin
      RelativeRelationship_Package.Initialize (This.all, point_Param, typesAllowedList_Param);
      return This;
   end Create;

   function getX (This : in out RelativeRelationship) return Integer is
   begin
        return This.x;
   end getX;

   function getY (This : in out RelativeRelationship) return Integer is
   begin
        return This.y;
   end getY;

   function getZ (This : in out RelativeRelationship) return Integer is
   begin
        return This.z;
   end getZ;

   function getTypesAllowedList (This : in out RelativeRelationship) return BasicArrayList_Access is
   begin
        return This.typesAllowedList;
   end getTypesAllowedList;

   procedure setTypesAllowedList (This : in out RelativeRelationship; typesAllowedList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      typesAllowedList : constant BasicArrayList_Access := BasicArrayList_Access (typesAllowedList_Param);
   begin
        This.typesAllowedList := typesAllowedList;
   end setTypesAllowedList;

begin
   null;
   NULL_RELATIVE_RELATIONSHIP := RelativeRelationship_Package.Create (PointFactory_Package.getInstance.ZERO_ZERO, BasicArrayListUtil_Package.getInstance.getImmutableInstance);

end org.allbinary.graphics.RelativeRelationship_Package;


