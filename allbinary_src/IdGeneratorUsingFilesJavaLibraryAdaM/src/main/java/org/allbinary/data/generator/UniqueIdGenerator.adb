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


package body org.allbinary.data.generator.UniqueIdGenerator_Package is

   procedure Initialize_Fields (This : in out UniqueIdGenerator'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.newFile := null;
      This.id := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out UniqueIdGenerator'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UniqueIdGenerator_Access is
      This : constant UniqueIdGenerator_Access := new UniqueIdGenerator;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure initialize (This : in out UniqueIdGenerator; value : Integer) is
      idData : AbDataOutputStream_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.newFile.createNewFile;
            idData := DataOutputStreamFactory_Package.getInstance.getInstanceForAbFile (This.newFile);
            idData.writeLong (value);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.IDLOGGING) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("initialize"), e);
            end if;
                end;
        end;
   end initialize;

   --  throws Exception
   procedure setFile (This : in out UniqueIdGenerator; filePathName : Unbounded_String; name : Unbounded_String) is
   begin
        This.newFile := AbFile_Package.createAbFile (filePathName);
   end setFile;

   --  throws IOException
   function getNext (This : in out UniqueIdGenerator) return Unbounded_String is
      idData : AbDataInputStream_Access;
      idOutData : AbDataOutputStream_Access;
      idFile : AbFileInputStream_Access;
      idOutFile : AbFileOutputStream_Access;
      idLong : Long_Long_Integer;
      commonStrings : CommonStrings_Access;
   begin
        idData := null;
        idOutData := null;
        begin
            idFile := AbFileInputStream_Package.Create (This.newFile);
            idData := AbDataInputStream_Package.Create (idFile);
            This.id := idData.readLong;
            idOutFile := AbFileOutputStream_Package.createFromAbFile (This.newFile);
            idOutData := AbDataOutputStream_Package.Create (idOutFile);
            idOutData.writeLong ((This.id) + (1));
            idLong := This.id;
            return idLong.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.IDLOGGING) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getNext"), e);
            end if;
            return To_Unbounded_String ("Error");
                end;
        end;
        --  finally
        begin
            StreamUtil_Package.getInstance.close (idData);
            StreamUtil_Package.getInstance.close (idOutData);
        end;
   end getNext;

   procedure getNext (This : in out UniqueIdGenerator) is
      Java_Result : constant Unbounded_String := UniqueIdGenerator'Class (This).getNext;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNext;

begin
   null;
   EXT := To_Unbounded_String (".unq");

end org.allbinary.data.generator.UniqueIdGenerator_Package;


