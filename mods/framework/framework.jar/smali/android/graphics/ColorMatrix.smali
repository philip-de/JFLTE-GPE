.class public Landroid/graphics/ColorMatrix;
.super Ljava/lang/Object;
.source "ColorMatrix.java"


# instance fields
.field private final mArray:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .locals 4
    .param p1    # Landroid/graphics/ColorMatrix;

    const/16 v3, 0x14

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [F

    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v0, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1    # [F

    const/16 v2, 0x14

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [F

    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method


# virtual methods
.method public final getArray()[F
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    return-object v0
.end method

.method public postConcat(Landroid/graphics/ColorMatrix;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorMatrix;

    invoke-virtual {p0, p1, p0}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public preConcat(Landroid/graphics/ColorMatrix;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorMatrix;

    invoke-virtual {p0, p0, p1}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public reset()V
    .locals 6

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/16 v3, 0xc

    const/16 v4, 0x12

    const/high16 v5, 0x3f800000

    aput v5, v0, v4

    aput v5, v0, v3

    aput v5, v0, v2

    aput v5, v0, v1

    return-void
.end method

.method public set(Landroid/graphics/ColorMatrix;)V
    .locals 4
    .param p1    # Landroid/graphics/ColorMatrix;

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v2, 0x14

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method

.method public set([F)V
    .locals 3
    .param p1    # [F

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v1, 0x14

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method

.method public setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V
    .locals 13
    .param p1    # Landroid/graphics/ColorMatrix;
    .param p2    # Landroid/graphics/ColorMatrix;

    const/4 v12, 0x4

    const/4 v11, 0x0

    const/16 v10, 0x14

    if-eq p1, p0, :cond_0

    if-ne p2, p0, :cond_1

    :cond_0
    new-array v6, v10, [F

    :goto_0
    iget-object v0, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v1, p2, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v10, :cond_3

    const/4 v2, 0x0

    move v4, v3

    :goto_2
    if-ge v2, v12, :cond_2

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v7, v5, 0x0

    aget v7, v0, v7

    add-int/lit8 v8, v2, 0x0

    aget v8, v1, v8

    mul-float/2addr v7, v8

    add-int/lit8 v8, v5, 0x1

    aget v8, v0, v8

    add-int/lit8 v9, v2, 0x5

    aget v9, v1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v8, v5, 0x2

    aget v8, v0, v8

    add-int/lit8 v9, v2, 0xa

    aget v9, v1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v8, v5, 0x3

    aget v8, v0, v8

    add-int/lit8 v9, v2, 0xf

    aget v9, v1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v6, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_2

    :cond_1
    iget-object v6, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v7, v5, 0x0

    aget v7, v0, v7

    aget v8, v1, v12

    mul-float/2addr v7, v8

    add-int/lit8 v8, v5, 0x1

    aget v8, v0, v8

    const/16 v9, 0x9

    aget v9, v1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v8, v5, 0x2

    aget v8, v0, v8

    const/16 v9, 0xe

    aget v9, v1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v8, v5, 0x3

    aget v8, v0, v8

    const/16 v9, 0x13

    aget v9, v1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v8, v5, 0x4

    aget v8, v0, v8

    add-float/2addr v7, v8

    aput v7, v6, v4

    add-int/lit8 v5, v5, 0x5

    goto :goto_1

    :cond_3
    iget-object v7, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    if-eq v6, v7, :cond_4

    iget-object v7, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    invoke-static {v6, v11, v7, v11, v10}, Ljava/lang/System;->arraycopy([FI[FII)V

    :cond_4
    return-void
.end method

.method public setRGB2YUV()V
    .locals 4

    const/high16 v3, 0x3f000000

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v1, 0x0

    const v2, 0x3e991687

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x3f1645a2

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x3de978d5

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, -0x41d335d2

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x41566517

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    const v2, -0x4129a177

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x42597a25

    aput v2, v0, v1

    return-void
.end method

.method public setRotate(IF)V
    .locals 8
    .param p1    # I
    .param p2    # F

    const/16 v7, 0xc

    const/4 v6, 0x6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    const v3, 0x40490fdb

    mul-float/2addr v3, p2

    const/high16 v4, 0x43340000

    div-float v1, v3, v4

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    packed-switch p1, :pswitch_data_0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3

    :pswitch_0
    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v0, v4, v7

    aput v0, v3, v6

    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v4, 0x7

    aput v2, v3, v4

    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v4, 0xb

    neg-float v5, v2

    aput v5, v3, v4

    :goto_0
    return-void

    :pswitch_1
    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v0, v4, v7

    aput v0, v3, v5

    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v4, 0x2

    neg-float v5, v2

    aput v5, v3, v4

    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v4, 0xa

    aput v2, v3, v4

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v0, v4, v6

    aput v0, v3, v5

    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v4, 0x1

    aput v2, v3, v4

    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v4, 0x5

    neg-float v5, v2

    aput v5, v3, v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSaturation(F)V
    .locals 7
    .param p1    # F

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/high16 v5, 0x3f800000

    sub-float v3, v5, p1

    const v5, 0x3e5a1cac

    mul-float v2, v5, v3

    const v5, 0x3f370a3d

    mul-float v1, v5, v3

    const v5, 0x3d9374bc

    mul-float v0, v5, v3

    const/4 v5, 0x0

    add-float v6, v2, p1

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    const/4 v5, 0x2

    aput v0, v4, v5

    const/4 v5, 0x5

    aput v2, v4, v5

    const/4 v5, 0x6

    add-float v6, v1, p1

    aput v6, v4, v5

    const/4 v5, 0x7

    aput v0, v4, v5

    const/16 v5, 0xa

    aput v2, v4, v5

    const/16 v5, 0xb

    aput v1, v4, v5

    const/16 v5, 0xc

    add-float v6, v0, p1

    aput v6, v4, v5

    return-void
.end method

.method public setScale(FFFF)V
    .locals 3
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v1, 0x13

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x0

    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 v2, 0x6

    aput p2, v0, v2

    const/16 v2, 0xc

    aput p3, v0, v2

    const/16 v2, 0x12

    aput p4, v0, v2

    return-void
.end method

.method public setYUV2RGB()V
    .locals 4

    const/high16 v3, 0x3f800000

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v1, 0x2

    const v2, 0x3fb374bc

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    const v2, -0x414fcce2

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x40c92e1f

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    const v2, 0x3fe2d0e5

    aput v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method
