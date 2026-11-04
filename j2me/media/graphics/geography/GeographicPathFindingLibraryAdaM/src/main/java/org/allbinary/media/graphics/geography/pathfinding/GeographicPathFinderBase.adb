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


with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package; use org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;

package body org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package is

   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype MultipassState_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access;
   function "=" (Left, Right : MultipassState_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References."=";
   subtype MultipassState_Access_Array is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array;
   function "=" (Left, Right : MultipassState_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References."=";
   subtype MultipassState_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access;
   function "=" (Left, Right : MultipassState_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References."=";
   subtype MultipassState_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access_Array;
   function "=" (Left, Right : MultipassState_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References."=";
   subtype MultipassState_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultipassState_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References."=";
   procedure Initialize_Fields (This : in out GeographicPathFinderBase'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out GeographicPathFinderBase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GeographicPathFinderBase_Access is
      This : constant GeographicPathFinderBase_Access := new GeographicPathFinderBase;
   begin
      GeographicPathFinderBase_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function searchTotalPath (This : in out GeographicPathFinderBase; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; totalPaths : Integer) return BasicArrayList_Access is
      startPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (startPathFindingNodeList_Param);
      endPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (endPathFindingNodeList_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end searchTotalPath;

   --  throws Exception
   function searchTotalPathN (This : in out GeographicPathFinderBase; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; totalPaths : Integer; multipassState_Param : access MultipassState_Package.MultipassState'Class) return BasicArrayList_Access is
      startPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (startPathFindingNodeList_Param);
      endPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (endPathFindingNodeList_Param);
      multipassState : constant MultipassState_Access := MultipassState_Access (multipassState_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end searchTotalPathN;

   procedure searchTotalPath (This : in out GeographicPathFinderBase; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; totalPaths : Integer) is
      Java_Result : constant BasicArrayList_Access := GeographicPathFinderBase'Class (This).searchTotalPath (startPathFindingNodeList_Param => startPathFindingNodeList_Param, endPathFindingNodeList_Param => endPathFindingNodeList_Param, totalPaths => totalPaths);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end searchTotalPath;

   procedure searchTotalPathN (This : in out GeographicPathFinderBase; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; totalPaths : Integer; multipassState_Param : access MultipassState_Package.MultipassState'Class) is
      Java_Result : constant BasicArrayList_Access := GeographicPathFinderBase'Class (This).searchTotalPathN (startPathFindingNodeList_Param => startPathFindingNodeList_Param, endPathFindingNodeList_Param => endPathFindingNodeList_Param, totalPaths => totalPaths, multipassState_Param => multipassState_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end searchTotalPathN;

begin
   null;
   NULL_GEOGRAPHIC_PATH_FINDER_BASE := GeographicPathFinderBase_Package.Create;

end org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package;


