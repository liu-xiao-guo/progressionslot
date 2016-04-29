import QtQuick 2.4
import Ubuntu.Components 1.3

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "progressionslot.liu-xiao-guo"

    width: units.gu(60)
    height: units.gu(85)

    Page {
        header: PageHeader {
            id: pageHeader
            title: i18n.tr("progressionslot")
            StyleHints {
                foregroundColor: UbuntuColors.orange
                backgroundColor: UbuntuColors.porcelain
                dividerColor: UbuntuColors.slate
            }
        }

        ListItem {
            anchors {
                left: parent.leftt
                right: parent.right
                top: parent.header.bottom
            }

            height: layout.height + (divider.visible ? divider.height : 0)
            ListItemLayout {
                id: layout
                title.text: "Hello developers!"
                subtitle.text: "I'm a subtitle, I'm tiny!"
                summary.text: "Ubuntu!"
                CheckBox { SlotsLayout.position: SlotsLayout.Leading }
                Icon {
                    name: "message"
                    SlotsLayout.position: SlotsLayout.Trailing;
                    width: units.gu(2)
                }

                ProgressionSlot {}
            }
        }
    }
}

