package generator

import (
	"fmt"

	"android/soong/android"
)

func nightshadeExpandVariables(ctx android.ModuleContext, in string) string {
	nightshadeVars := ctx.Config().VendorConfig("nightshadeVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if nightshadeVars.IsSet(name) {
			return nightshadeVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
