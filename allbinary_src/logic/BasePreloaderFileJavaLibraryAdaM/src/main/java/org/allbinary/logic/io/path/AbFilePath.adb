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


package body org.allbinary.logic.io.path.AbFilePath_Package is

   procedure Initialize_Fields (This : in out AbFilePath'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AbFilePath'Class; aPath : Unbounded_String) is
      pathData : AbPathData_Access;
      abPathUtil : PathUtil_Access;
   begin
        AbPath_Package.Initialize (This, StringUtil_Package.getInstance.EMPTY_STRING, StringUtil_Package.getInstance.EMPTY_STRING);
        pathData := AbPathData_Package.getInstance;
        abPathUtil := PathUtil_Package.getInstance;
        This.schema := This.getSchema (aPath);
        This.setName (pathData.getNameFromPath (aPath));
        This.setPath (abPathUtil.adjust (This.getPathFromPath (abPathUtil.removeNameFromPath (aPath).toString)));
   end Initialize;

   function Create (aPath : Unbounded_String) return AbFilePath_Access is
      This : constant AbFilePath_Access := new AbFilePath;
   begin
      Initialize (This.all, aPath);
      return This;
   end Create;

end org.allbinary.logic.io.path.AbFilePath_Package;


