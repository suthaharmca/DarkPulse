.class public Lkotlin/jvm/internal/MutablePropertyReference2Impl;
.super Lkotlin/jvm/internal/MutablePropertyReference2;
.source "MutablePropertyReference2Impl.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/jvm/internal/MutablePropertyReference2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "owner"    # Lkotlin/reflect/KDeclarationContainer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .line 15
    move-object v0, p1

    check-cast v0, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;

    invoke-interface {v0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v0

    instance-of v1, p1, Lkotlin/reflect/KClass;

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, p2, p3, v1}, Lkotlin/jvm/internal/MutablePropertyReference2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "receiver1"    # Ljava/lang/Object;
    .param p2, "receiver2"    # Ljava/lang/Object;

    .line 28
    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference2Impl;->getGetter()Lkotlin/reflect/KProperty2$Getter;

    move-result-object v0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/reflect/KProperty2$Getter;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "receiver1"    # Ljava/lang/Object;
    .param p2, "receiver2"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference2Impl;->getSetter()Lkotlin/reflect/KMutableProperty2$Setter;

    move-result-object v0

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/reflect/KMutableProperty2$Setter;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method
