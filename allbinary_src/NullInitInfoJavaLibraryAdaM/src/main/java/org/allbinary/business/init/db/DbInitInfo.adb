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


with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;

package body org.allbinary.business.init.db.DbInitInfo_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   procedure Initialize_Fields (This : in out DbInitInfo'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DbInitInfo'Class; initFileName : Unbounded_String; read : Boolean) is
   begin
        DbConnectionInfo_Package.Initialize (This);
   end Initialize;

   function Create (initFileName : Unbounded_String; read : Boolean) return DbInitInfo_Access is
      This : constant DbInitInfo_Access := new DbInitInfo;
   begin
      DbInitInfo_Package.Initialize (This.all, initFileName, read);
      return This;
   end Create;

   function getUrl (This : in out DbInitInfo) return Unbounded_String is
      url : Unbounded_String;
   begin
        url := DbConnectionInfo (This).getUrl;
        PreLogUtil_Package.put (To_Unbounded_String ("Url: ") & url, DbInitInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("getUrl"));
        return url;
   end getUrl;

   --  throws Exception
   procedure write (This : in out DbInitInfo) is
   begin
        null;
   end write;

   --  throws Exception
   procedure load (This : in out DbInitInfo) is
   begin
        null;
   end load;

   procedure setHasRead (This : in out DbInitInfo; value : Boolean) is
   begin
        null;
   end setHasRead;

end org.allbinary.business.init.db.DbInitInfo_Package;


