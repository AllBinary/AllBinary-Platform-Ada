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


package body views.generic_Id.address.StatesView_Package is

   procedure Initialize_Fields (This : in out StatesView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out StatesView'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StatesView_Access is
      This : constant StatesView_Access := new StatesView;
   begin
      StatesView_Package.Initialize (This.all);
      return This;
   end Create;

   function toXmlNode (This : in out StatesView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      statesFile : Unbounded_String;
      lineReader : LineReader_Access;
      option : Unbounded_String;
   begin
        begin
            node := document.createElement (StreetAddressData_Package.STATES);
            statesFile := Java_Image ((URLGLOBALS.getMainPath) + (FREEBLISKET_PATH_GLOBALS.getInstance.LINEDATAPATH)) & To_Unbounded_String ("states.txt");
            lineReader := LineReader_Package.Create (statesFile);
            while lineReader.hasNext loop
                option := lineReader.next;
                node.appendChild (ModDomHelper_Package.createNameValueNodes (document, StreetAddressData_Package.STATE, option));
            end loop;
            return node;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, StatesView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"), e);
            end if;
            return null;
                end;
        end;
   end toXmlNode;

   procedure toXmlNode (This : in out StatesView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := StatesView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.generic_Id.address.StatesView_Package;


