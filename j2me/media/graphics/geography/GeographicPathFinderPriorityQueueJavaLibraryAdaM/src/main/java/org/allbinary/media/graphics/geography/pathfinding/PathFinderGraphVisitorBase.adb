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


package body org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package is

   procedure Initialize_Fields (This : in out PathFinderGraphVisitorBase'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PathFinderGraphVisitorBase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PathFinderGraphVisitorBase_Access is
      This : constant PathFinderGraphVisitorBase_Access := new PathFinderGraphVisitorBase;
   begin
      PathFinderGraphVisitorBase_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure visit (This : in out PathFinderGraphVisitorBase; graph_Param : access Java_Object'Class; startPathFindingNodeList_Param : access BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList'Class) is
      graph : Java_Object_Access := Java_Object_Access (graph_Param);
      startPathFindingNodeList : BasicArrayList_Access := BasicArrayList_Access (startPathFindingNodeList_Param);
      endPathFindingNodeList : BasicArrayList_Access := BasicArrayList_Access (endPathFindingNodeList_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end visit;

   --  throws Exception
   procedure fixPath (This : in out PathFinderGraphVisitorBase; startPathFindingNodeList_Param : access BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList'Class; pathList_Param : access BasicArrayList'Class) is
      startPathFindingNodeList : BasicArrayList_Access := BasicArrayList_Access (startPathFindingNodeList_Param);
      endPathFindingNodeList : BasicArrayList_Access := BasicArrayList_Access (endPathFindingNodeList_Param);
      pathList : BasicArrayList_Access := BasicArrayList_Access (pathList_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end fixPath;

   function isValid (This : in out PathFinderGraphVisitorBase; graphPath_Param : access Java_Object'Class) return Boolean is
      graphPath : Java_Object_Access := Java_Object_Access (graphPath_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isValid;

   function getInvalidReason (This : in out PathFinderGraphVisitorBase; graphPath_Param : access Java_Object'Class) return Unbounded_String is
      graphPath : Java_Object_Access := Java_Object_Access (graphPath_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getInvalidReason;

   procedure isValid (This : in out PathFinderGraphVisitorBase; graphPath_Param : access Java_Object'Class) is
      Java_Result : constant Boolean := PathFinderGraphVisitorBase'Class (This).isValid (graphPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure getInvalidReason (This : in out PathFinderGraphVisitorBase; graphPath_Param : access Java_Object'Class) is
      Java_Result : constant Unbounded_String := PathFinderGraphVisitorBase'Class (This).getInvalidReason (graphPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInvalidReason;

end org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package;


