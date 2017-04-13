# PlantUML Tour

## 安装PlantUML

```
brew install graphivz
brew install plantuml
```

## 生成UML图

```
plantuml -tpng uml/class.uml
```

## 使用脚本

```
./uml.sh uml/xxxx.uml
```

$f(x) = sin(x) +12$

```mermaid
graph LR
    A --> B
    B --> C
    C --> A
```

```plantuml
@startuml
class TestA {
    -String name
    +int id
}

class TestB extends TestA{
   -String desc
   +String getDesc()
   +void setDesc(String desc)
}
@enduml
```
