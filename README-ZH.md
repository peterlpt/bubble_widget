文档语言: [English](https://raw.githubusercontent.com/peterlpt/bubble_widget/master/README.md) | [中文简体](https://raw.githubusercontent.com/peterlpt/bubble_widget/master/README-ZH.md)

# bubble_widget

一个气泡外形的`Widget`。

支持气泡常用样式配置：描边、填充、箭头方向、大小等参数配置。

## Getting Started

#### 添加依赖

```yaml
dependencies:
  bubble_widget: ^0.0.2
```

#### 使用示例

```dart
class BubbleWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BubbleWidgetExample')),
      body: Center(
        child: BubbleWidget(
          padding: EdgeInsets.all(8),
          color: Theme.of(context).primaryColor,
          child: Text('I\'m a bubble'),
        ),
      ),
    );
  }
}
```

#### 参数属性列表

| 参数名        |      参数类型      | 默认值                | 参数说明                                                     |
| :------------ | :----------------: | :-------------------- | :----------------------------------------------------------- |
| child         |       Widget       | 无                    | 必须                                                         |
| padding       | EdgeInsetsGeometry | 无                    | child相对于气泡体的 padding                                  |
| color         |       Color        | Colors.transparent    | 背景色                                                       |
| elevation     |       double       | 5.0                   | z轴高度，`color`为Colors.transparent时，默认值为0            |
| style         |    BubbleStyle     | BubbleStyle.fill      | 气泡样式， `BubbleStyle.stroke`为描边式； `BubbleStyle.fill`为填充式 |
| strokeColor   |       Color        | Colors.transparent    | 描边颜色，`style` 为 `BubbleStyle.stroke` 时有效             |
| strokeWidth   |       double       | 0.5                   | 描边宽度，`style` 为 `BubbleStyle.stroke` 时有效             |
| direction     |   ArrowDirection   | ArrowDirection.bottom | 气泡尖角相对于气泡体的位置                                   |
| positionRatio |       double       | 0.5                   | 气泡尖角相对位置系数，0.0~1.0，左上角(0.0, 0.0)起算，0.5表示为中间位置 |
| arrowHeight   |       double       | 5.0                   | 气泡尖角高度                                                 |
| arrowWidth    |       double       | 8.0                   | 气泡尖角底部宽度                                             |
| borderRadius  |       double       | 10.0                  | 气泡体圆角半径                                               |

#### 参数图例

<img src="https://raw.githubusercontent.com/peterlpt/bubble_widget/master/resources/bubble_widget_properties.png" alt="bubble_widget_properties" style="zoom: 25%;" />

#### 其他说明

* 参数修正说明

为更方便使用，对参数`arrowHeight`、`borderRadius`、`arrowWidth`、`positionRatio`依次进行了超出范围的自动修正处理。

* `BubbleWidget`的`child`及`padding`只填充除气泡尖角外的气泡体
* `arrowWidth = 0`、`style = BubbleStyle.stroke`时，气泡尖角将会展示为一条引线

