package main

import (
	_ "github.com/team-ide/go-driver/db_gbase"
	_ "github.com/team-ide/go-tool/db/db_type_dm"
	_ "github.com/team-ide/go-tool/db/db_type_gbase"
	_ "github.com/team-ide/go-tool/db/db_type_kingbase"
	_ "github.com/team-ide/go-tool/db/db_type_mysql"
	_ "github.com/team-ide/go-tool/db/db_type_odbc"
	_ "github.com/team-ide/go-tool/db/db_type_opengauss"
	_ "github.com/team-ide/go-tool/db/db_type_oracle"
	_ "github.com/team-ide/go-tool/db/db_type_postgresql"
	_ "github.com/team-ide/go-tool/db/db_type_shentong"
	_ "github.com/team-ide/go-tool/db/db_type_sqlite"
	"runtime"
)

func main() {

	println("Go os:" + runtime.GOOS)
	println("Go arch:" + runtime.GOARCH)
	println("Go compiler:" + runtime.Compiler)
	println("Go version:" + runtime.Version())
}
