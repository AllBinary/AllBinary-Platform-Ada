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
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure visit (This : in out PathFinderGraphVisitorBase; graph : Java_Object_Access; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end visit;

   --  throws Exception
   procedure fixPath (This : in out PathFinderGraphVisitorBase; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; pathList : BasicArrayList_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end fixPath;

   function isValid (This : in out PathFinderGraphVisitorBase; graphPath : Java_Object_Access) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isValid;

   function getInvalidReason (This : in out PathFinderGraphVisitorBase; graphPath : Java_Object_Access) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getInvalidReason;

   procedure isValid (This : in out PathFinderGraphVisitorBase; graphPath : Java_Object_Access) is
      Java_Result : constant Boolean := PathFinderGraphVisitorBase'Class (This).isValid (graphPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure getInvalidReason (This : in out PathFinderGraphVisitorBase; graphPath : Java_Object_Access) is
      Java_Result : constant Unbounded_String := PathFinderGraphVisitorBase'Class (This).getInvalidReason (graphPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInvalidReason;

end org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package;


