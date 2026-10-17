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


package body org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package is

   procedure Initialize_Fields (This : in out AcceptableResponseGenerator'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return AcceptableResponseGenerator_Access is
   begin
        return AcceptableResponseGenerator_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AcceptableResponseGenerator'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AcceptableResponseGenerator_Access is
      This : constant AcceptableResponseGenerator_Access := new AcceptableResponseGenerator;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function get (This : in out AcceptableResponseGenerator; httpServletRequest : HttpServletRequest_Access) return Unbounded_String is
      commonStrings : CommonStrings_Access;
      acceptableResponseUtil : AcceptableResponseUtil_Access;
      acceptable : Unbounded_String;
      result : Unbounded_String;
      size : Integer;
      index : Integer;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        begin
            acceptableResponseUtil := AcceptableResponseUtil_Package.getInstance;
            acceptable := httpServletRequest.getHeader (To_Unbounded_String ("accept"));
            result := acceptableResponseUtil.getTagName (0);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTP) then
                This.logUtil.putF (To_Unbounded_String ("Request Type: ") & acceptable, This'Unchecked_Access, commonStrings.GET);
            end if;
            if (acceptable) /= (Null_Unbounded_String) then
                size := acceptableResponseUtil.size;
                for index in 0 .. (size) - 1 loop
                    if (acceptable.compareTo (acceptableResponseUtil.get (index))) = (0) then
                        result := acceptableResponseUtil.getTagName (index);
                    end if;
                end loop;
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTP) then
                This.logUtil.putF (To_Unbounded_String ("Response Type: ") & result, This'Unchecked_Access, commonStrings.GET);
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.GET, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end get;

   procedure getInstance is
      Java_Result : constant AcceptableResponseGenerator_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure get (This : in out AcceptableResponseGenerator; httpServletRequest : HttpServletRequest_Access) is
      Java_Result : constant Unbounded_String := AcceptableResponseGenerator'Class (This).get (httpServletRequest);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

begin
   null;
   instance := AcceptableResponseGenerator_Package.Create;

end org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package;


