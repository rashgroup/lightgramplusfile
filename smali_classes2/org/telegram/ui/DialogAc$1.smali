.class Lorg/telegram/ui/DialogAc$1;
.super Ljava/lang/Object;
.source "DialogAc.java"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogAc;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogAc;

.field final synthetic val$image:Ljava/lang/String;

.field final synthetic val$image_main:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogAc;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DialogAc$1;->this$0:Lorg/telegram/ui/DialogAc;

    iput-object p2, p0, Lorg/telegram/ui/DialogAc$1;->val$image:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/DialogAc$1;->val$image_main:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/DialogAc$1;->this$0:Lorg/telegram/ui/DialogAc;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogAc;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogAc$1;->val$image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogAc$1;->val$image_main:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogAc$1;->val$image_main:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method
