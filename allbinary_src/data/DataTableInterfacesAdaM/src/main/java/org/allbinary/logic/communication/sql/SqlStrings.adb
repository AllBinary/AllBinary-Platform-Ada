--  Generated Code Do Not Modify


package body org.allbinary.logic.communication.sql.SqlStrings_Package is

   procedure Initialize_Fields (This : in out SqlStrings'Class) is
   begin
      null;
      This.CREATE_DATABASE := To_Unbounded_String ("CREATE DATABASE ");
      This.DROP_TABLE := To_Unbounded_String ("DROP TABLE ");
      This.CREATE_TABLE := To_Unbounded_String ("CREATE TABLE ");
      This.START := To_Unbounded_String (" (");
      This.SELECT_Id := To_Unbounded_String ("SELECT ");
      This.FROM := To_Unbounded_String (" FROM ");
      This.SELECT_ALL := To_Unbounded_String ("SELECT *");
      This.WHERE := To_Unbounded_String (" WHERE ");
      This.AND_Id := To_Unbounded_String (" AND ");
      This.UPDATE := To_Unbounded_String ("UPDATE ");
      This.SET := To_Unbounded_String (" SET ");
      This.SELECT_ALL_FROM := This.SELECT_ALL & This.FROM;
      This.DELETE := To_Unbounded_String ("DELETE");
      This.LIKE_QUOTE := To_Unbounded_String (" LIKE """);
      This.INSERT_INTO := To_Unbounded_String ("INSERT INTO ");
      This.VALUES := To_Unbounded_String (" VALUES ('");
      This.ORDER_BY := To_Unbounded_String ("ORDER BY");
      This.COUNT := To_Unbounded_String ("COUNT(");
      This.ASC := To_Unbounded_String ("ASC");
      This.DESC := To_Unbounded_String ("DESC");
      This.PRIMARY_KEY := To_Unbounded_String ("PRIMARY KEY(");
      This.END_Id := To_Unbounded_String (") )");
      This.EQUAL_QUOTE := To_Unbounded_String (" = """);
      This.CLOSE_QUOTE := CommonSeps_Package.getInstance.QUOTE;
      This.EQUAL_QUOTE_NO_SPACE := To_Unbounded_String ("=""");
      This.ESCAPE := To_Unbounded_String ("\");
      This.DOUBLE_ESCAPE := To_Unbounded_String ("\\");
      This.MORE_THAN_QUOTE := To_Unbounded_String (" > """);
      This.LESS_THAN_QUOTE := To_Unbounded_String (" < """);
      This.SINGLE_QUOTE_COMMA_SEP := To_Unbounded_String ("','");
      This.ID := To_Unbounded_String ("ID");
      This.SQL_STATEMENT_LABEL := To_Unbounded_String ("SQL Statement: ");
      This.COLUMN_VALUE := To_Unbounded_String ("" & ASCII.LF & "Column Value: ");
      This.CREATE_RETURN := To_Unbounded_String (" Created Successfully");
      This.FIELD_VALUE := To_Unbounded_String ("" & ASCII.LF & "Field Value: ");
   end Initialize_Fields;

   procedure Initialize (This : in out SqlStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SqlStrings_Access is
      This : constant SqlStrings_Access := new SqlStrings;
   begin
      SqlStrings_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return SqlStrings_Access is
   begin
        return SqlStrings_Package.instance;
   end getInstance;

begin
   null;
   instance := SqlStrings_Package.Create;

end org.allbinary.logic.communication.sql.SqlStrings_Package;


