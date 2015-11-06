# Xamarin-Calabash-iOS

This is a project from Xamarin for writing mobile automation testcases with Cucumber + Calabash.

For more, please refer to :

Xamarin Calabash Doc: https://developer.xamarin.com/guides/testcloud/calabash/introduction-to-calabash/

Calabash API: http://calabashapi.xamarin.com/

Notes: 1. Create .featuer file in rubymine with step by step.

Once a Given/When/Then scentence created, holding 'Option'+'Enter' can create the combine step defination.

If the combined step defination created, in feature file, press 'Command'+'Enter' can switch to step defination in rb file.

Use Calabash Console to query the elements. calabash-ios console query "*"

Use 'class'+'text' can easily located the element, eg.touch("UITextFieldLabel text:'#{textfield_name}'")

Create a config folder and a cucumber.yml file. Reference the setting inside to make the report generation and screenshots store.
