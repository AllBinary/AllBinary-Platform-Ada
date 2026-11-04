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


with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package;

package body org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package is

   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   function "=" (Left, Right : BasicGeographicMap_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype PathFinderGraphVisitorBase_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access;
   function "=" (Left, Right : PathFinderGraphVisitorBase_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References."=";
   subtype PathFinderGraphVisitorBase_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array;
   function "=" (Left, Right : PathFinderGraphVisitorBase_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References."=";
   subtype PathFinderGraphVisitorBase_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array_Access;
   function "=" (Left, Right : PathFinderGraphVisitorBase_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References."=";
   subtype PathFinderGraphVisitorBase_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array_Access_Array;
   function "=" (Left, Right : PathFinderGraphVisitorBase_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References."=";
   subtype PathFinderGraphVisitorBase_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFinderGraphVisitorBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References."=";
   procedure Initialize_Fields (This : in out PathFinderGraphVisitorFactoryBase'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PathFinderGraphVisitorFactoryBase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PathFinderGraphVisitorFactoryBase_Access is
      This : constant PathFinderGraphVisitorFactoryBase_Access := new PathFinderGraphVisitorFactoryBase;
   begin
      PathFinderGraphVisitorFactoryBase_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out PathFinderGraphVisitorFactoryBase; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) return PathFinderGraphVisitorBase_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getInstance;

   procedure getInstance (This : in out PathFinderGraphVisitorFactoryBase; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      Java_Result : constant PathFinderGraphVisitorBase_Access := PathFinderGraphVisitorFactoryBase'Class (This).getInstance (geographicMapInterface_Param => geographicMapInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package;


