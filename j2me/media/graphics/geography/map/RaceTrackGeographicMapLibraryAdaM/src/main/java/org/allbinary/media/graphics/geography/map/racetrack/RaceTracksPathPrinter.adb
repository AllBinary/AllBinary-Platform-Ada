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
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package body org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   procedure Initialize_Fields (This : in out RaceTracksPathPrinter'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out RaceTracksPathPrinter'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RaceTracksPathPrinter_Access is
      This : constant RaceTracksPathPrinter_Access := new RaceTracksPathPrinter;
   begin
      RaceTracksPathPrinter_Package.Initialize (This.all);
      return This;
   end Create;


   procedure printPath (This : in out RaceTracksPathPrinter; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      size : Integer;
      anyType : Java_Object_Access;
      index : Integer;
   begin
        size := list.size;
        for index in 0 .. (size) - 1 loop
            anyType := list.get (index);
            PreLogUtil_Package.put (StringMaker_Package.Create.append (To_Unbounded_String ("pathList.add(cellPositionFactory.getInstance")).append (anyType.toString).append (To_Unbounded_String (");")).toString, RaceTracksPathPrinter_Access'(This'Unchecked_Access), To_Unbounded_String ("printPath"));
        end loop;
   end printPath;

   procedure printPaths (This : in out RaceTracksPathPrinter; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      size : Integer;
      index : Integer;
   begin
        size := list.size;
        for index in 0 .. (size) - 1 loop
            Ada.Text_IO.Put_Line (Java_Image (StringMaker_Package.Create.append (To_Unbounded_String (" Path ")).appendint (index).append (CommonLabels_Package.getInstance.COLON_SEP).toString));
            RaceTracksPathPrinter'Class (This).printPath (BasicArrayList_Access (list.get (index)));
        end loop;
   end printPaths;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package;


