const bgDim = '#141617'
const bg0 = '#1d2021'
const bg1 = '#282828'
const bg2 = '#3c3836'
const bg3 = '#504945'
const grey0 = '#7c6f64'
const grey1 = '#928374'
const grey2 = '#a89984'
const fg0 = '#d4be98'
const fg1 = '#ddc7a1'
const red = '#ea6962'
const orange = '#e78a4e'
const yellow = '#d8a657'
const green = '#a9b665'
const aqua = '#89b482'
const blue = '#7daea3'
const purple = '#d3869b'
const redDim = '#3c1f1e'
const greenDim = '#32361a'
const blueDim = '#0d3138'
const redBg = '#442e2d'
const yellowBg = '#473c29'
const greenBg = '#333e34'
const blueBg = '#2e3b3b'


const time = Variable('', {
    poll: [1000, function() {
        return Date().toString()
    }],
})


function Bar(monitor = 0) {
    const myLabel = Widget.Label({
        label: 'some example content',
    })
    const zeit = Widget.Label({
        label: time.bind()
    })
    return Widget.Window({
        monitor,
        name: `bar${monitor}`,
        anchor: ['bottom', 'left', 'right'],
        child: zeit,
    })
}
//const Bar = (monitor) => Widget.Window({
//    monitor,
//    name: `bar${monitor}`,
//    anchor: ['bottom', 'left', 'right'],
//    //exclusivity: 'exclusive', // bar free up windowmanager space
//    child: Widget.CenterBox({
//        start_widget: Widget.Label({
//            hpack: 'center',
//            label: 'Welcome to AGS!',
//        }),
//        center_widget: Widget.Label({
//            hpack: 'center',
//            label: 'some text',
//        }),
//        end_widget: Widget.Label({
//            hpack: 'center',
//            label: time.bind(),
//        }),
//    }),
//})

App.config({
    windows: [
        Bar(0),
        Bar(1),
        Bar(2),
    ],
})
