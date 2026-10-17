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


package body org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package is

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
      Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out PathFinderGraphVisitorFactoryBase; geographicMapInterface : BasicGeographicMap_Access) return PathFinderGraphVisitorBase_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getInstance;

   procedure getInstance (This : in out PathFinderGraphVisitorFactoryBase; geographicMapInterface : BasicGeographicMap_Access) is
      Java_Result : constant PathFinderGraphVisitorBase_Access := PathFinderGraphVisitorFactoryBase'Class (This).getInstance (geographicMapInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package;


