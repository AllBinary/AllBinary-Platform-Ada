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


package body org.allbinary.business.init.WeblisketFinder_Package is

   procedure Initialize_Fields (This : in out WeblisketFinder'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.subDirectory := SubDirectory_Package.getInstance;
   end Initialize_Fields;


   function getInstance return WeblisketFinder_Access is
   begin
        return WeblisketFinder_Package.instance;
   end getInstance;

   procedure Initialize (This : in out WeblisketFinder'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return WeblisketFinder_Access is
      This : constant WeblisketFinder_Access := new WeblisketFinder;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function findAll (This : in out WeblisketFinder; path : Unbounded_String) return BasicArrayList_Access is
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("findAll"));
            return This.subDirectory.search (WeblisketFinder_Package.KEY, AbFile_Package.createAbFile (path));
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("findAll"), e);
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("findAll"), e);
            end if;
            return null;
        end;
   end findAll;

   function getInstallationPath (This : in out WeblisketFinder; file : AbFile_Access) return Unbounded_String is
      filePath : Unbounded_String;
      end_Id : Integer;
   begin
        begin
            filePath := file.getPath;
            end_Id := (Index (filePath, To_String (KEY)) - 1);
            if (end_Id) < (0) then
                return Null_Unbounded_String;
            end if;
            return Unbounded_Slice (filePath, (0) + 1, end_Id);
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRELOADERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getInstallationPath"), e);
            end if;
            return Null_Unbounded_String;
        end;
   end getInstallationPath;

   --  throws Exception
   procedure main (args : Unbounded_String_Array_Access) is
      stringUtil : StringUtil_Access;
      vector : BasicArrayList_Access;
   begin
        stringUtil := StringUtil_Package.getInstance;
        vector := WeblisketFinder_Package.getInstance.findAll (stringUtil.EMPTY_STRING);
        Ada.Text_IO.Put_Line (Java_Image (vector.size));
   end main;

   procedure getInstance is
      Java_Result : constant WeblisketFinder_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure findAll (This : in out WeblisketFinder; path : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := WeblisketFinder'Class (This).findAll (path);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end findAll;

   procedure getInstallationPath (This : in out WeblisketFinder; file : AbFile_Access) is
      Java_Result : constant Unbounded_String := WeblisketFinder'Class (This).getInstallationPath (file);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstallationPath;

begin
   null;
   instance := WeblisketFinder_Package.Create;
   KEY := To_Unbounded_String ("installerdata.dat");

end org.allbinary.business.init.WeblisketFinder_Package;


