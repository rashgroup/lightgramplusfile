.class Lorg/telegram/ui/tools/b$12;
.super Ljava/lang/Object;
.source "AlertShare.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZZZLorg/telegram/ui/tools/b$b;Lorg/telegram/ui/tools/b$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/b;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/b;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/b$12;->a:Lorg/telegram/ui/tools/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/b$12;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v0, p2}, Lorg/telegram/ui/tools/b;->d(Lorg/telegram/ui/tools/b;Z)Z

    return-void
.end method
