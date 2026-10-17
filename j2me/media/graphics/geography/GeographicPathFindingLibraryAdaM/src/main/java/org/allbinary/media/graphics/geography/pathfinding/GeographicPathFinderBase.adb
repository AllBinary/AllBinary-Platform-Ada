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


package body org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package is

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
   function searchTotalPath (This : in out GeographicPathFinderBase; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; totalPaths : Integer) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end searchTotalPath;

   --  throws Exception
   function searchTotalPathN (This : in out GeographicPathFinderBase; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; totalPaths : Integer; multipassState : MultipassState_Access) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end searchTotalPathN;

   procedure searchTotalPath (This : in out GeographicPathFinderBase; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; totalPaths : Integer) is
      Java_Result : constant BasicArrayList_Access := GeographicPathFinderBase'Class (This).searchTotalPath (startPathFindingNodeList, endPathFindingNodeList, totalPaths);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end searchTotalPath;

   procedure searchTotalPathN (This : in out GeographicPathFinderBase; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; totalPaths : Integer; multipassState : MultipassState_Access) is
      Java_Result : constant BasicArrayList_Access := GeographicPathFinderBase'Class (This).searchTotalPathN (startPathFindingNodeList, endPathFindingNodeList, totalPaths, multipassState);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end searchTotalPathN;

begin
   null;
   NULL_GEOGRAPHIC_PATH_FINDER_BASE := GeographicPathFinderBase_Package.Create;

end org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package;


