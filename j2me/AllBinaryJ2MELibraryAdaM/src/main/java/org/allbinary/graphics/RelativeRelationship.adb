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


package body org.allbinary.graphics.RelativeRelationship_Package is

   procedure Initialize_Fields (This : in out RelativeRelationship'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out RelativeRelationship'Class; point : GPoint_Access; typesAllowedList : BasicArrayList_Access) is
   begin
      Initialize_Fields (This);
        This.x := point.getX;
        This.y := point.getY;
        This.z := point.getZ;
        This.typesAllowedList := typesAllowedList;
   end Initialize;

   function Create (point : GPoint_Access; typesAllowedList : BasicArrayList_Access) return RelativeRelationship_Access is
      This : constant RelativeRelationship_Access := new RelativeRelationship;
   begin
      RelativeRelationship_Package.Initialize (This.all, point, typesAllowedList);
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

   procedure setTypesAllowedList (This : in out RelativeRelationship; typesAllowedList : BasicArrayList_Access) is
   begin
        This.typesAllowedList := typesAllowedList;
   end setTypesAllowedList;

begin
   null;
   NULL_RELATIVE_RELATIONSHIP := RelativeRelationship_Package.Create (PointFactory_Package.getInstance.ZERO_ZERO, BasicArrayListUtil_Package.getInstance.getImmutableInstance);

end org.allbinary.graphics.RelativeRelationship_Package;


